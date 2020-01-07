import 'package:flutter/material.dart';

class BorrowerListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BorrowerListTile(),
        BorrowerListTile(),
        BorrowerListTile(),
        BorrowerListTile(),
        BorrowerListTile(),
        BorrowerListTile(),
        BorrowerListTile(),
        BorrowerListTile(),
        BorrowerListTile(),
        BorrowerListTile(),
        BorrowerListTile(),
        BorrowerListTile(),
      ],
    );
  }
}

class BorrowerListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text('B')),
      title: Text('Bruce Wayne'),
      subtitle: Text('1329'),
      trailing: Text('Rs 150000'),
    );
  }
}
