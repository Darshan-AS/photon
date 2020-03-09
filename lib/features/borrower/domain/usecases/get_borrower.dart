import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:photon/core/error/failure.dart';
import 'package:photon/core/usecases/usecase.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';
import 'package:photon/features/borrower/domain/repositories/borrower_repository.dart';

class GetBorrower implements UseCase<Borrower, Params> {
  final BorrowerRepository repository;

  GetBorrower(this.repository);

  @override
  Future<Either<Failure, Borrower>> call(Params params) async {
    return await repository.getBorrower(params.id);
  }
}

class Params extends Equatable {
  final int id;

  Params({this.id});

  @override
  List<Object> get props => [id];
}
