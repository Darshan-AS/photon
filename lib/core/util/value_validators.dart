import 'package:dartz/dartz.dart';
import 'package:photon/core/error/failures.dart';

Either<ValueFailure<String>, String> emailValidator(String email) {
  assert(email != null);

  const emailRegex =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
  return RegExp(emailRegex).hasMatch(email)
      ? Right(email)
      : Left(ValueFailure.invalidEmail(invalidValue: email));
}

Either<ValueFailure<String>, String> passwordValidator(String password) {
  assert(password != null);

  return password.length >= 6
      ? Right(password)
      : Left(ValueFailure.shortPassword(invalidValue: password));
}
