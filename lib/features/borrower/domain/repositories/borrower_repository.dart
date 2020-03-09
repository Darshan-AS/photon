import 'package:dartz/dartz.dart';
import 'package:photon/core/error/failure.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';

abstract class BorrowerRepository {
  Future<Either<Failure, Borrower>> getBorrower(int id);

  Future<Either<Failure, List<Borrower>>> getAllBorrowers();
}
