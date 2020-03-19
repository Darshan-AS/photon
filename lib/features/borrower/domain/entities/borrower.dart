import 'package:equatable/equatable.dart';

class Borrower extends Equatable {
  final int id;
  final String name;
  final String gender;
  final String dob;
  final String email;
  final String phone;
  final String address;

  Borrower({
    this.id,
    this.name,
    this.gender,
    this.dob,
    this.email,
    this.phone,
    this.address,
  });

  @override
  List<Object> get props => [id];
}
