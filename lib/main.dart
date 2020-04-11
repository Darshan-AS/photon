import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photon/features/borrower/presentation/bloc/borrower_detail/bloc.dart';
import 'package:photon/injection_container.dart' as dependencyInjector;
import 'package:photon/router.dart';

import 'features/borrower/presentation/bloc/borrowers_list/bloc.dart';
import 'injection_container.dart';

Future<void> main() async {
  await dependencyInjector.init();
  runApp(Photon());
}

class Photon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BorrowersListBloc>(
          create: (_) => serviceLocator<BorrowersListBloc>(),
        ),
        BlocProvider<BorrowerDetailBloc>(
          create: (_) => serviceLocator<BorrowerDetailBloc>(),
        )
      ],
      child: MaterialApp(
        initialRoute: Router.homeRoute,
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
