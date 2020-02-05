import 'package:flutter/material.dart';
import 'package:photon/screens/borrower/profile.dart';
import 'package:photon/screens/borrower/transaction_list.dart';

class Borrower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Borrower Detail'),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: <Widget>[
          Profile(),
          Expanded(child: TransactionListView()),
        ],
      ),
    );
  }
}
