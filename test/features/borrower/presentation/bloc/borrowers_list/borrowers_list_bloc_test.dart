import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/core/usecases/usecase.dart';
import 'package:photon/core/util/input_converter.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';
import 'package:photon/features/borrower/domain/usecases/get_all_borrowers.dart';
import 'package:photon/features/borrower/presentation/bloc/borrowers_list/bloc.dart';

class MockGetAllBorrowers extends Mock implements GetAllBorrowers {}

class MockInputConverter extends Mock implements InputConverter {}

void main() {
  BorrowersListBloc bloc;
  MockGetAllBorrowers mockGetAllBorrowers;
  MockInputConverter mockInputConverter;

  final List<Borrower> tAllBorrowers = [
    Borrower(
      id: 1,
      name: 'Bruce Wayne',
      gender: 'M',
      dob: '1939-05-27',
      email: 'bruce.wayne@gmail.com',
      phone: '1234567890',
      address: '1007, Mountain Drive, Gotham, New Jersey, United States',
    ),
    Borrower(
      id: 2,
      name: 'Clark Kent',
      gender: 'M',
      dob: '1973-06-18',
      email: 'clark.kent@gmail.com',
      phone: '0987654321',
      address:
          '344, Clinton street, Apartment 3D, Metropolis, New York, United States',
    )
  ];

  setUp(() {
    mockGetAllBorrowers = MockGetAllBorrowers();
    mockInputConverter = MockInputConverter();

    bloc = BorrowersListBloc(
      getAllBorrowers: mockGetAllBorrowers,
      inputConverter: mockInputConverter,
    );
  });

  tearDown(() {
    bloc?.close();
  });

  blocTest(
    'should return an [Empty] state as the initial bloc state',
    build: () async => bloc,
    skip: 0,
    expect: [BorrowersListState.empty()],
  );

  group('getAllBorrowersEvent', () {
    void setUpMockGetAllBorrowersSuccess() => when(mockGetAllBorrowers(any))
        .thenAnswer((_) async => Right(tAllBorrowers));

    void setUpMockGetAllBorrowersFailure() => when(mockGetAllBorrowers(any))
        .thenAnswer((_) async => Left(ServerFailure()));

    blocTest(
      'should call GetAllBorrowers usecase to get data',
      build: () async => bloc,
      act: (bloc) {
        setUpMockGetAllBorrowersSuccess();

        return bloc.add(BorrowersListEvent.getAllBorrowersEvent());
      },
      verify: (_) async => verify(mockGetAllBorrowers(NoParams())),
    );

    blocTest(
      'should emit [Loading, AllBorrowersLoaded] when getAllBorrowers is successfull',
      build: () async => bloc,
      act: (bloc) {
        setUpMockGetAllBorrowersSuccess();

        return bloc.add(BorrowersListEvent.getAllBorrowersEvent());
      },
      expect: [
        BorrowersListState.loading(),
        BorrowersListState.allBorrowersLoaded(borrowersList: tAllBorrowers)
      ],
    );

    blocTest(
      'should emit [Loading, Error] when getAllBorrowers is unsuccessfull',
      build: () async => bloc,
      act: (bloc) {
        setUpMockGetAllBorrowersFailure();

        return bloc.add(BorrowersListEvent.getAllBorrowersEvent());
      },
      expect: [
        BorrowersListState.loading(),
        BorrowersListState.error(message: SERVER_FAILURE_MESSAGE)
      ],
    );
  });
}
