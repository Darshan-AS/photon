import 'package:flutter/material.dart';
import 'package:photon/screens/home/home.dart';
import 'package:photon/themes/dark_theme.dart';
import 'package:photon/themes/light_theme.dart';

void main() => runApp(Photon());

class Photon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
