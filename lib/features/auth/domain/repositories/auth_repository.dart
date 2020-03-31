import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:photon/core/error/failures.dart';

import '../entities.dart';

abstract class AuthRepository {
  Future<Either<Failure, Unit>> signUpWithEmail({
    @required Email email,
    @required Password password,
  });

  Future<Either<Failure, Unit>> signInWithEmail({
    @required Email email,
    @required Password password,
  });

  Future<Either<Failure, Unit>> signInWithGoogle();
}
