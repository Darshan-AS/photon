import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:photon/core/error/exceptions.dart';
import 'package:photon/features/borrower/data/models/borrower_model.dart';

abstract class BorrowerRemoteDataSource {
  Future<BorrowerModel> getBorrower(int id);

  Future<List<BorrowerModel>> getAllBorrowers();
}

class BorrowerRemoteDataSourceImpl implements BorrowerRemoteDataSource {
  final http.Client client;

  BorrowerRemoteDataSourceImpl({@required this.client});

  @override
  Future<BorrowerModel> getBorrower(int id) async =>
      BorrowerModel.fromJson(jsonDecode(await _getResponseFromUrl(
        'http://localhost:8000/users/api/borrowers/$id/',
      )));

  @override
  Future<List<BorrowerModel>> getAllBorrowers() async =>
      BorrowerModel.fromJsonList(jsonDecode(await _getResponseFromUrl(
        'http://localhost:8000/users/api/borrowers/',
      )));

  Future<String> _getResponseFromUrl(String url) async {
    final response = await client.get(
      url,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200) throw ServerException();
    return response.body;
  }
}
