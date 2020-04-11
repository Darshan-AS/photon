import 'package:flutter/material.dart';
import 'package:photon/features/borrower/presentation/pages/borrower_detail.dart';

import 'features/home/screens/home/home.dart';

class Router {
  static const String homeRoute = '/';
  static const String borrowerDetailRoute = '/borrowerDetail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Home());
      case borrowerDetailRoute:
        Map args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => BorrowerDetail(id: args['id']),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
