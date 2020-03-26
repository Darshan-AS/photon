import 'package:dartz/dartz.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/core/util/value_objects.dart';
import 'package:photon/core/util/value_validators.dart';

class Email extends ValueObject<String> {
  final Either<Failure, String> value;

  factory Email(String email) => Email._(emailValidator(email));

  const Email._(this.value);
}

class Password extends ValueObject<String> {
  final Either<Failure, String> value;

  factory Password(String password) => Password._(passwordValidator(password));

  const Password._(this.value);
}
