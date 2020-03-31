import 'package:equatable/equatable.dart';

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

class AuthFailure extends Failure {
  final String message;

  AuthFailure([this.message]);

  @override
  List<Object> get props => [this.message];
}
