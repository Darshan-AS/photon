import 'package:dartz/dartz.dart';
import 'package:photon/core/error/failures.dart';

class InputConverter {
  Either<Failure, int> toInt(String str) {
    try {
      return Right(int.parse(str));
    } on FormatException {
      return Left(InputFailure());
    }
  }
}
