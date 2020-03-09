import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:photon/features/borrower/data/models/borrower_model.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tBorrowerModel = BorrowerModel(
    id: 1,
    name: 'Bruce Wayne',
    gender: 'M',
    dob: '1939-05-27',
    email: 'bruce.wayne@gmail.com',
    phone: '1234567890',
    address: '1007, Mountain Drive, Gotham, New Jersey, United States',
  );

  final tOtherBorrowerModel = BorrowerModel(
    id: 2,
    name: 'Clark Kent',
    gender: 'M',
    dob: '1973-06-18',
    email: 'clark.kent@gmail.com',
    phone: '0987654321',
    address:
        '344, Clinton street, Apartment 3D, Metropolis, New York, United States',
  );

  test('should be subclass of Borrower entity', () async {
    expect(tBorrowerModel, isA<Borrower>());
  });

  group('fromJson', () {
    test('should return a valid model', () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('borrower.json'));

      final result = BorrowerModel.fromJson(jsonMap);

      expect(result, tBorrowerModel);
    });

    test('should return a list of valid models', () async {
      final List<dynamic> jsonList = json.decode(fixture('borrowers.json'));

      final result = BorrowerModel.fromJsonList(jsonList);

      expect(result, [tBorrowerModel, tOtherBorrowerModel]);
    });
  });

  group('toJson', () {
    test('should return a valid json object', () async {
      final result = tBorrowerModel.toJson();

      final expectedMap = json.decode(fixture('borrower.json'));

      expect(result, expectedMap);
    });

    test('should return a valid array of json object', () async {
      final result = BorrowerModel.toJsonList([
        tBorrowerModel,
        tOtherBorrowerModel,
      ]);

      final expectedList = json.decode(fixture('borrowers.json'));

      expect(result, expectedList);
    });
  });
}
