import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/features/auth/domain/entities.dart';
import 'package:photon/features/auth/domain/repositories/auth_repository.dart';

import 'bloc.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthRepository _authRepository;

  SignInFormBloc(this._authRepository);

  @override
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          email: Email(e.emailString),
          authResponseOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordString),
          authResponseOption: none(),
        );
      },
      signUpWithEmail: (e) async* {
        yield* _performAuthAction(_authRepository.signUpWithEmail);
      },
      signInWithEmail: (e) async* {
        yield* _performAuthAction(_authRepository.signInWithEmail);
      },
      signInWithGoogle: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authResponseOption: none(),
        );

        final authResponse = await _authRepository.signInWithGoogle();

        yield state.copyWith(
          isSubmitting: false,
          authResponseOption: some(authResponse),
        );
      },
    );
  }

  Stream<SignInFormState> _performAuthAction(
    Future<Either<AuthFailure, Unit>> Function({
      @required Email email,
      @required Password password,
    })
        authAction,
  ) async* {
    Either<AuthFailure, Unit> authResponse;

    if (state.email.isValid() && state.password.isValid()) {
      yield state.copyWith(
        isSubmitting: true,
        authResponseOption: none(),
      );

      authResponse = await authAction(
        email: state.email,
        password: state.password,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authResponseOption: optionOf(authResponse),
    );
  }
}
