import 'package:flutter/material.dart';

import 'backdrop.dart';
import 'borrower_list.dart';

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
