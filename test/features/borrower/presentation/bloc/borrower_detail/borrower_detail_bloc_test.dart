import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/core/util/input_converter.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';
import 'package:photon/features/borrower/domain/usecases/get_borrower.dart';
import 'package:photon/features/borrower/presentation/bloc/borrower_detail/bloc.dart';

class MockGetBorrower extends Mock implements GetBorrower {}

class MockInputConverter extends Mock implements InputConverter {}

void main() {
  BorrowerDetailBloc bloc;
  MockGetBorrower mockGetBorrower;
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

  setUp(() {
    mockGetBorrower = MockGetBorrower();
    mockInputConverter = MockInputConverter();

    bloc = BorrowerDetailBloc(
      getBorrower: mockGetBorrower,
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
    expect: [BorrowerDetailState.empty()],
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

        return bloc.add(BorrowerDetailEvent.getBorrower('12@4'));
      },
      expect: [
        BorrowerDetailState.error(message: INVALID_INPUT_FAILURE_MESSAGE)
      ],
    );

    blocTest(
      'should call GetBorrower usecase to get data',
      build: () async => bloc,
      act: (bloc) {
        setUpMockInputConverterSuccess();
        setUpMockGetBorrowerSuccess();

        return bloc.add(BorrowerDetailEvent.getBorrower(tIdString));
      },
      verify: (_) async => verify(mockGetBorrower(Params(id: tIdParsed))),
    );

    blocTest(
      'should emit [Loading, BorrowerLoaded] when getBorrower is successfull',
      build: () async => bloc,
      act: (bloc) {
        setUpMockInputConverterSuccess();
        setUpMockGetBorrowerSuccess();

        return bloc.add(BorrowerDetailEvent.getBorrower(tIdString));
      },
      expect: [
        BorrowerDetailState.loading(),
        BorrowerDetailState.borrowerLoaded(borrower: tBorrower)
      ],
    );

    blocTest(
      'should emit [Loading, Error] when getBorrower is unsuccessfull',
      build: () async => bloc,
      act: (bloc) {
        setUpMockInputConverterSuccess();
        setUpMockGetBorrowerFailure();

        return bloc.add(BorrowerDetailEvent.getBorrower(tIdString));
      },
      expect: [
        BorrowerDetailState.loading(),
        BorrowerDetailState.error(message: SERVER_FAILURE_MESSAGE)
      ],
    );
  });
}
