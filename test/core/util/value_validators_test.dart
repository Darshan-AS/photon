import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/core/util/value_validators.dart';

void main() {
  group('emailValidator', () {
    final validEmail = 'bruce.wayne@gmail.com';
    final invalidEmail = 'i am not a valid email';

    test('should throw an error when email is null', () {
      final call = emailValidator;

      expect(() => call(null), throwsAssertionError);
    });

    test('should return invalid email failure when email is invalid', () {
      final result = emailValidator(invalidEmail);

      final Either<ValueFailure<String>, String> expected =
      Left(ValueFailure.invalidEmail(invalidValue: invalidEmail));

      expect(result, expected);
    });

    test('should return email when it is valid', () {
      final result = emailValidator(validEmail);

      expect(result, Right(validEmail));
    });
  });

  group('passwordValidator', () {
    final validPassword = 'aValidLongPassword';
    final invalidPassword = 'short';

    test('should throw an error when password is null', () {
      final call = passwordValidator;

      expect(() => call(null), throwsAssertionError);
    });

    test('should return shord password failure when password is invalid', () {
      final result = passwordValidator(invalidPassword);

      final Either<ValueFailure<String>, String> expected =
      Left(ValueFailure.shortPassword(invalidValue: invalidPassword));

      expect(result, expected);
    });

    test('should return password when it is valid', () {
      final result = passwordValidator(validPassword);

      expect(result, Right(validPassword));
    });
  });
}
