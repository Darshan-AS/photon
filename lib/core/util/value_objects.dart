import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photon/core/error/errors.dart';
import 'package:photon/core/error/failures.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  @override
  List<Object> get props => [value];

  @override
  String toString() => 'Value: $value';

  bool isValid() => value.isRight();

  T getOrThrow({e: UnexpectedValueError}) => value.fold((f) => throw e(f), id);
}
