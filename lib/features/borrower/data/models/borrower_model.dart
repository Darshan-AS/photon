import 'package:flutter/foundation.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';

class BorrowerModel extends Borrower {
  BorrowerModel({
    @required int id,
    @required String name,
    @required String gender,
    @required String dob,
    @required String email,
    @required String phone,
    @required String address,
  }) : super(
          id: id,
          name: name,
          gender: gender,
          dob: dob,
          email: email,
          phone: phone,
          address: address,
        );

  factory BorrowerModel.fromJson(Map<String, dynamic> json) {
    return BorrowerModel(
      id: json['id'],
      name: json['name'],
      gender: json['gender'],
      dob: json['dob'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'gender': gender,
      'dob': dob,
      'email': email,
      'phone': phone,
      'address': address,
    };
  }

  static List<BorrowerModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => BorrowerModel.fromJson(json)).toList();
  }

  static List<dynamic> toJsonList(List<BorrowerModel> borrowers) {
    return borrowers.map((borrower) => borrower.toJson()).toList();
  }
}
