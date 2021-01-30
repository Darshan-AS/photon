import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:photon/features/auth/presentation/pages/sign_in_page.dart';
import 'package:photon/injection_container.dart' as dependencyInjector;

import 'injection_container.dart';

Future<void> main() async {
  configureInjection(Environment.prod);
  await dependencyInjector.init();
  runApp(Photon());
}

//class Photon extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MultiBlocProvider(
//      providers: [
//        BlocProvider<BorrowersListBloc>(
//          create: (_) => serviceLocator<BorrowersListBloc>(),
//        ),
//        BlocProvider<BorrowerDetailBloc>(
//          create: (_) => serviceLocator<BorrowerDetailBloc>(),
//        )
//      ],
//      child: MaterialApp(
//        initialRoute: Router.homeRoute,
//        onGenerateRoute: Router.generateRoute,
//      ),
//    );
//  }
//}

class Photon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photon',
      home: SignInPage(),
      theme: ThemeData.light().copyWith(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
