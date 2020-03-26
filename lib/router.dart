import 'package:flutter/material.dart';
import 'package:photon/features/borrower/presentation/pages/borrowerDetail.dart';

import 'features/home/screens/home/home.dart';

class Router {
  static const String homeRoute = '/';
  static const String borrowerRoute = '/borrower';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Home());
      case borrowerRoute:
        return MaterialPageRoute(builder: (_) => BorrowerDetail(id: '1'));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
