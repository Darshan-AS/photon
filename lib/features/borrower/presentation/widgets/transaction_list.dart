import 'package:flutter/material.dart';

class TransactionListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TransactionListTile(),
        TransactionListTile(),
        TransactionListTile(),
        TransactionListTile(),
        TransactionListTile(),
        TransactionListTile(),
        TransactionListTile(),
        TransactionListTile(),
        TransactionListTile(),
        TransactionListTile(),
        TransactionListTile(),
        TransactionListTile(),
      ],
    );
  }
}

class TransactionListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('12/07/2016'),
      trailing: Text('Rs 150'),
    );
  }
}
