import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:photon/features/auth/domain/repositories/auth_repository.dart';

import 'bloc.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthRepository _authRepository;

  SignInFormBloc(this._authRepository);

  @override
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
