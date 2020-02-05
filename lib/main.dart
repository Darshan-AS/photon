import 'package:flutter/material.dart';
import 'package:photon/router.dart';
import 'package:photon/screens/home/home.dart';

void main() => runApp(Photon());

class Photon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      initialRoute: Router.homeRoute,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
