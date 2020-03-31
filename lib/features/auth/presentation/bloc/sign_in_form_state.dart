import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/features/auth/domain/entities.dart';

part 'sign_in_form_state.freezed.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required Email email,
    @required Password password,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<AuthFailure, Unit>> authResponseOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        email: Email(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        authResponseOption: none(),
      );
}
