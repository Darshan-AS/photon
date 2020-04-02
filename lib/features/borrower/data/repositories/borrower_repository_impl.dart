import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:photon/core/error/exceptions.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/features/borrower/data/datasources/borrower_remote_data_source.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';
import 'package:photon/features/borrower/domain/repositories/borrower_repository.dart';

class BorrowerRepositoryImpl implements BorrowerRepository {
  final BorrowerRemoteDataSource remoteDataSource;

  BorrowerRepositoryImpl({
    @required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, Borrower>> getBorrower(int id) async {
    try {
      return Right(await remoteDataSource.getBorrower(id));
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Borrower>>> getAllBorrowers() async {
    try {
      return Right(await remoteDataSource.getAllBorrowers());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
