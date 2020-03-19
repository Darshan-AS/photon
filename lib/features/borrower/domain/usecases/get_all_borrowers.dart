import 'package:dartz/dartz.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/core/usecases/usecase.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';
import 'package:photon/features/borrower/domain/repositories/borrower_repository.dart';

class GetAllBorrowers implements UseCase<List<Borrower>, NoParams> {
  final BorrowerRepository repository;

  GetAllBorrowers(this.repository);

  @override
  Future<Either<Failure, List<Borrower>>> call(NoParams params) async {
    return await repository.getAllBorrowers();
  }
}
