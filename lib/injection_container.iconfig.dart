// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:photon/features/auth/data/core/firebase_injectable_module.dart';
import 'package:photon/features/auth/data/repositories/firebase_auth_repository.dart';
import 'package:photon/features/auth/domain/repositories/auth_repository.dart';
import 'package:photon/features/auth/presentation/bloc/sign_in_form_bloc.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<AuthRepository>(
      () => FirebaseAuthRepository(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<AuthRepository>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
