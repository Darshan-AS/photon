import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photon/injection_container.dart' as dependencyInjector;
import 'package:photon/router.dart';

import 'features/borrower/presentation/bloc/bloc.dart';
import 'injection_container.dart';

Future<void> main() async {
  await dependencyInjector.init();
  runApp(Photon());
}

class Photon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => serviceLocator<BorrowerBloc>(),
      child: MaterialApp(
        initialRoute: Router.homeRoute,
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
