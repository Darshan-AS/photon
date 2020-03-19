import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/core/usecases/usecase.dart';
import 'package:photon/core/util/input_converter.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';
import 'package:photon/features/borrower/domain/usecases/get_all_borrowers.dart';
import 'package:photon/features/borrower/domain/usecases/get_borrower.dart';
import 'package:photon/features/borrower/presentation/bloc/bloc.dart';

class MockGetBorrower extends Mock implements GetBorrower {}

class MockGetAllBorrowers extends Mock implements GetAllBorrowers {}

class MockInputConverter extends Mock implements InputConverter {}

void main() {
  BorrowerBloc bloc;
  MockGetBorrower mockGetBorrower;
  MockGetAllBorrowers mockGetAllBorrowers;
  MockInputConverter mockInputConverter;

  final Borrower tBorrower = Borrower(
    id: 1,
    name: 'Bruce Wayne',
    gender: 'M',
    dob: '1939-05-27',
    email: 'bruce.wayne@gmail.com',
    phone: '1234567890',
    address: '1007, Mountain Drive, Gotham, New Jersey, United States',
  );

  final tOtherBorrower = Borrower(
    id: 2,
    name: 'Clark Kent',
    gender: 'M',
    dob: '1973-06-18',
    email: 'clark.kent@gmail.com',
    phone: '0987654321',
    address:
        '344, Clinton street, Apartment 3D, Metropolis, New York, United States',
  );

  setUp(() {
    mockGetBorrower = MockGetBorrower();
    mockGetAllBorrowers = MockGetAllBorrowers();
    mockInputConverter = MockInputConverter();

    bloc = BorrowerBloc(
      getBorrower: mockGetBorrower,
      getAllBorrowers: mockGetAllBorrowers,
      inputConverter: mockInputConverter,
    );
  });

  blocTest(
    'should return an [Empty] state as the initial bloc state',
    build: () async => bloc,
    skip: 0,
    expect: [Empty()],
  );

  group('getBorrowerEvent', () {
    final String tIdString = '1';
    final int tIdParsed = 1;

    void setUpMockInputConverterSuccess() =>
        when(mockInputConverter.toInt(any)).thenReturn(Right(tIdParsed));

    void setUpMockInputConverterFailure() => when(mockInputConverter.toInt(any))
        .thenReturn(Left(InputFailure(INVALID_INPUT_FAILURE_MESSAGE)));

    void setUpMockGetBorrowerSuccess() =>
        when(mockGetBorrower(any)).thenAnswer((_) async => Right(tBorrower));

    void setUpMockGetBorrowerFailure() => when(mockGetBorrower(any))
        .thenAnswer((_) async => Left(ServerFailure()));

    blocTest(
      'should call the InputConverter to convert id from String to int',
      build: () async => bloc,
      act: (bloc) => bloc.add(GetBorrowerEvent(tIdString)),
      verify: (_) async => verify(mockInputConverter.toInt(tIdString)),
    );

    blocTest(
      'should emit [Error] state when the input to InputConverter is invalid',
      build: () async => bloc,
      act: (bloc) {
        setUpMockInputConverterFailure();

        return bloc.add(GetBorrowerEvent('12@4'));
      },
      expect: [Error(message: INVALID_INPUT_FAILURE_MESSAGE)],
    );

    blocTest(
      'should call GetBorrower usecase to get data',
      build: () async => bloc,
      act: (bloc) {
        setUpMockInputConverterSuccess();
        setUpMockGetBorrowerSuccess();

        return bloc.add(GetBorrowerEvent(tIdString));
      },
      verify: (_) async => verify(mockGetBorrower(Params(id: tIdParsed))),
    );

    blocTest(
      'should emit [Loading, BorrowerLoaded] when getBorrower is successfull',
      build: () async => bloc,
      act: (bloc) {
        setUpMockInputConverterSuccess();
        setUpMockGetBorrowerSuccess();

        return bloc.add(GetBorrowerEvent(tIdString));
      },
      expect: [Loading(), BorrowerLoaded(borrower: tBorrower)],
    );

    blocTest(
      'should emit [Loading, Error] when getBorrower is unsuccessfull',
      build: () async => bloc,
      act: (bloc) {
        setUpMockInputConverterSuccess();
        setUpMockGetBorrowerFailure();

        return bloc.add(GetBorrowerEvent(tIdString));
      },
      expect: [Loading(), Error(message: SERVER_FAILURE_MESSAGE)],
    );
  });

  group('getAllBorrowersEvent', () {
    final tAllBorrowers = [tBorrower, tOtherBorrower];

    void setUpMockGetAllBorrowersSuccess() => when(mockGetAllBorrowers(any))
        .thenAnswer((_) async => Right(tAllBorrowers));

    void setUpMockGetAllBorrowersFailure() => when(mockGetAllBorrowers(any))
        .thenAnswer((_) async => Left(ServerFailure()));

    blocTest(
      'should call GetAllBorrowers usecase to get data',
      build: () async => bloc,
      act: (bloc) {
        setUpMockGetAllBorrowersSuccess();

        return bloc.add(GetAllBorrowersEvent());
      },
      verify: (_) async => verify(mockGetAllBorrowers(NoParams())),
    );

    blocTest(
      'should emit [Loading, AllBorrowersLoaded] when getAllBorrowers is successfull',
      build: () async => bloc,
      act: (bloc) {
        setUpMockGetAllBorrowersSuccess();

        return bloc.add(GetAllBorrowersEvent());
      },
      expect: [Loading(), AllBorrowersLoaded(borrowersList: tAllBorrowers)],
    );

    blocTest(
      'should emit [Loading, Error] when getAllBorrowers is unsuccessfull',
      build: () async => bloc,
      act: (bloc) {
        setUpMockGetAllBorrowersFailure();

        return bloc.add(GetAllBorrowersEvent());
      },
      expect: [Loading(), Error(message: SERVER_FAILURE_MESSAGE)],
    );
  });
}
