import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

abstract class Failure extends Equatable {}

class ServerFailure extends Failure {
  final String message;

  ServerFailure([this.message]);

  @override
  List<Object> get props => [this.message];
}

class InputFailure extends Failure {
  final String message;

  InputFailure([this.message]);

  @override
  List<Object> get props => [this.message];
}

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  const factory AuthFailure.serverError() = ServerError;

  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  const factory AuthFailure.invalidEmailOrPassword() = InvalidEmailOrPassword;
}

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required String invalidValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    @required String invalidValue,
  }) = ShortPassword<T>;
}
