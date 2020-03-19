import 'package:flutter/material.dart';
import 'package:photon/screens/borrower/borrower.dart';

import 'features/home/screens/home/home.dart';

class Router {
  static const String homeRoute = '/';
  static const String borrowerRoute = '/borrower';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Home());
      case borrowerRoute:
        return MaterialPageRoute(builder: (_) => Borrower());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
