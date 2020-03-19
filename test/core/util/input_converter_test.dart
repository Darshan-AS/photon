import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/core/util/input_converter.dart';

void main() {
  InputConverter inputConverter;

  setUp(() {
    inputConverter = InputConverter();
  });

  test('should return an int when string represents an integer', () async {
    final str = '123';

    final result = inputConverter.toInt(str);

    expect(result, Right(123));
  });

  test('should return a Failure when string does not represent an integer',
      () async {
    final str = '1@3';

    final result = inputConverter.toInt(str);

    expect(result, Left(InputFailure()));
  });
}
