import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:photon/core/error/exceptions.dart';
import 'package:photon/features/borrower/data/datasources/borrower_remote_data_source.dart';
import 'package:photon/features/borrower/data/models/borrower_model.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  BorrowerRemoteDataSourceImpl dataSource;
  MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = BorrowerRemoteDataSourceImpl(client: mockHttpClient);
  });

  void setUpMockHttpClient(fixture, responseCode) {
    when(mockHttpClient.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response(fixture, responseCode));
  }

  group('getBorrower', () {
    final tId = 1;
    final tBorrowerModel =
    BorrowerModel.fromJson(jsonDecode(fixture('borrower.json')));

    test(
      'should perform a GET request on a base_url/id with application/json header',
      () async {
        setUpMockHttpClient(fixture('borrower.json'), 200);

        dataSource.getBorrower(tId);

        verify(mockHttpClient.get(
          'http://localhost:8000/users/api/borrowers/$tId/',
          headers: {'Content-Type': 'application/json'},
        ));
      },
    );

    test(
      'should get a valid BorrowerModel when the response code is 200',
      () async {
        setUpMockHttpClient(fixture('borrower.json'), 200);

        final result = await dataSource.getBorrower(tId);

        expect(result, tBorrowerModel);
      },
    );

    test(
      'should throw a ServerException when the response code is not 200',
      () async {
        setUpMockHttpClient('something went bad. Like really bad!', 404);

        final call = dataSource.getBorrower;

        expect(() => call(tId), throwsA(isInstanceOf<ServerException>()));
      },
    );
  });

  group('getAllBorrowers', () {
    final tAllBorrowers =
    BorrowerModel.fromJsonList(jsonDecode(fixture('borrowers.json')));

    test(
      'should perform a GET request on a base_url/ with application/json header',
      () async {
        setUpMockHttpClient(fixture('borrowers.json'), 200);

        dataSource.getAllBorrowers();

        verify(mockHttpClient.get(
          'http://localhost:8000/users/api/borrowers/',
          headers: {'Content-Type': 'application/json'},
        ));
      },
    );

    test(
      'should get a list of valid BorrowerModels when the response code is 200',
      () async {
        setUpMockHttpClient(fixture('borrowers.json'), 200);

        final result = await dataSource.getAllBorrowers();

        expect(result, tAllBorrowers);
      },
    );

    test(
      'should throw a ServerException when the response code is not 200',
      () async {
        setUpMockHttpClient('something went bad. Like really bad!', 404);

        final call = dataSource.getAllBorrowers;

        expect(() => call(), throwsA(isInstanceOf<ServerException>()));
      },
    );
  });
}
