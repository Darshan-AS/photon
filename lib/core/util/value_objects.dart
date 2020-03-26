import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:photon/core/error/failures.dart';

abstract class ValueObject<T> extends Equatable {
  const ValueObject();

  Either<Failure, T> get value;

  @override
  List<Object> get props => [value];

  @override
  String toString() => 'Value: $value';
}
