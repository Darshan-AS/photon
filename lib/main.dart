import 'package:flutter/material.dart';
import 'package:photon/injection_container.dart' as dependencyInjector;
import 'package:photon/router.dart';

import 'features/home/screens/home/home.dart';

Future<void> main() async {
  await dependencyInjector.init();
  runApp(Photon());
}

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
