import 'package:dartz/dartz.dart';
import 'package:photon/core/error/failures.dart';

Either<Failure, String> emailValidator(String email) {
  assert(email != null);

  const emailRegex =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
  return RegExp(emailRegex).hasMatch(email)
      ? Right(email)
      : Left(InputFailure('Invalid email'));
}

Either<Failure, String> passwordValidator(String password) {
  assert(password != null);

  return password.length >= 6
      ? Right(password)
      : Left(InputFailure('Password length is too short'));
}
