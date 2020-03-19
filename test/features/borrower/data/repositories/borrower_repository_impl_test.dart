import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:photon/core/error/exceptions.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/features/borrower/data/datasources/borrower_remote_data_source.dart';
import 'package:photon/features/borrower/data/models/borrower_model.dart';
import 'package:photon/features/borrower/data/repositories/borrower_repository_impl.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';

class MockRemoteDataSource extends Mock implements BorrowerRemoteDataSource {}

void main() {
  BorrowerRepositoryImpl repository;
  MockRemoteDataSource mockRemoteDataSource;

  final tBorrowerModel = BorrowerModel(
    id: 1,
    name: 'Bruce Wayne',
    gender: 'M',
    dob: '1939-05-27',
    email: 'bruce.wayne@gmail.com',
    phone: '1234567890',
    address: '1007, Mountain Drive, Gotham, New Jersey, United States',
  );

  final tOtherBorrowerModel = BorrowerModel(
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
    mockRemoteDataSource = MockRemoteDataSource();
    repository = BorrowerRepositoryImpl(remoteDataSource: mockRemoteDataSource);
  });

  group('getBorrower', () {
    final tId = tBorrowerModel.id;
    final Borrower tBorrower = tBorrowerModel;

    test(
        'should return remote data when the call to remote data is successfull',
        () async {
      when(mockRemoteDataSource.getBorrower(any))
          .thenAnswer((_) async => tBorrowerModel);

      final Either<Failure, Borrower> result =
          await repository.getBorrower(tId);

      verify(mockRemoteDataSource.getBorrower(tId));
      expect(result, Right(tBorrower));
    });

    test(
        'should return server failure when the call to remote data is unsuccessfull',
        () async {
      when(mockRemoteDataSource.getBorrower(any)).thenThrow(ServerException());

      final Either<Failure, Borrower> result =
          await repository.getBorrower(tId);

      verify(mockRemoteDataSource.getBorrower(tId));
      expect(result, Left(ServerFailure()));
    });
  });

  group('getAllBorrowers', () {
    final List<BorrowerModel> tBorrowerModelList = [
      tBorrowerModel,
      tOtherBorrowerModel
    ];
    final List<Borrower> tBorrowerList = tBorrowerModelList;

    test(
        'should return remote data when the call to remote data is successfull',
        () async {
      when(mockRemoteDataSource.getAllBorrowers())
          .thenAnswer((_) async => tBorrowerModelList);

      final Either<Failure, List<Borrower>> result =
          await repository.getAllBorrowers();

      verify(mockRemoteDataSource.getAllBorrowers());
      expect(result, Right(tBorrowerList));
    });

    test(
        'should return server failure when the call to remote data is unsuccessfull',
        () async {
      when(mockRemoteDataSource.getAllBorrowers()).thenThrow(ServerException());

      final Either<Failure, List<Borrower>> result =
          await repository.getAllBorrowers();

      verify(mockRemoteDataSource.getAllBorrowers());
      expect(result, Left(ServerFailure()));
    });
  });
}
