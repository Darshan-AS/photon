import 'package:flutter/material.dart';
import 'package:photon/screens/home/borrower_list.dart';

import 'backdrop.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Backdrop(
        frontLayer: BorrowerListView(),
        backLayer: Container(color: Theme.of(context).primaryColor),
        frontTitle: Text('Photon'),
        backTitle: Text('Menu'),
      ),
    );
  }
}
