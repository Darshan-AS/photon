// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  SignUpWithEmail signUpWithEmail() {
    return const SignUpWithEmail();
  }

  SignInWithEmail signInWithEmail() {
    return const SignInWithEmail();
  }

  SignInWithGoogle signInWithGoogle() {
    return const SignInWithGoogle();
  }
}

// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result signUpWithEmail(),
    @required Result signInWithEmail(),
    @required Result signInWithGoogle(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithEmail(),
    Result signInWithEmail(),
    Result signInWithGoogle(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signUpWithEmail(SignUpWithEmail value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signUpWithEmail(SignUpWithEmail value),
    Result signInWithEmail(SignInWithEmail value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  });
}

abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;

  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;

  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result signUpWithEmail(),
    @required Result signInWithEmail(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmail != null);
    assert(signInWithEmail != null);
    assert(signInWithGoogle != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithEmail(),
    Result signInWithEmail(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signUpWithEmail(SignUpWithEmail value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmail != null);
    assert(signInWithEmail != null);
    assert(signInWithGoogle != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signUpWithEmail(SignUpWithEmail value),
    Result signInWithEmail(SignInWithEmail value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;

  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;

  $Res call({String password});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result signUpWithEmail(),
    @required Result signInWithEmail(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmail != null);
    assert(signInWithEmail != null);
    assert(signInWithGoogle != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithEmail(),
    Result signInWithEmail(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signUpWithEmail(SignUpWithEmail value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmail != null);
    assert(signInWithEmail != null);
    assert(signInWithGoogle != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signUpWithEmail(SignUpWithEmail value),
    Result signInWithEmail(SignInWithEmail value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;

  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $SignUpWithEmailCopyWith<$Res> {
  factory $SignUpWithEmailCopyWith(
          SignUpWithEmail value, $Res Function(SignUpWithEmail) then) =
      _$SignUpWithEmailCopyWithImpl<$Res>;
}

class _$SignUpWithEmailCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignUpWithEmailCopyWith<$Res> {
  _$SignUpWithEmailCopyWithImpl(
      SignUpWithEmail _value, $Res Function(SignUpWithEmail) _then)
      : super(_value, (v) => _then(v as SignUpWithEmail));

  @override
  SignUpWithEmail get _value => super._value as SignUpWithEmail;
}

class _$SignUpWithEmail implements SignUpWithEmail {
  const _$SignUpWithEmail();

  @override
  String toString() {
    return 'SignInFormEvent.signUpWithEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignUpWithEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result signUpWithEmail(),
    @required Result signInWithEmail(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmail != null);
    assert(signInWithEmail != null);
    assert(signInWithGoogle != null);
    return signUpWithEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithEmail(),
    Result signInWithEmail(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithEmail != null) {
      return signUpWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signUpWithEmail(SignUpWithEmail value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmail != null);
    assert(signInWithEmail != null);
    assert(signInWithGoogle != null);
    return signUpWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signUpWithEmail(SignUpWithEmail value),
    Result signInWithEmail(SignInWithEmail value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithEmail != null) {
      return signUpWithEmail(this);
    }
    return orElse();
  }
}

abstract class SignUpWithEmail implements SignInFormEvent {
  const factory SignUpWithEmail() = _$SignUpWithEmail;
}

abstract class $SignInWithEmailCopyWith<$Res> {
  factory $SignInWithEmailCopyWith(
          SignInWithEmail value, $Res Function(SignInWithEmail) then) =
      _$SignInWithEmailCopyWithImpl<$Res>;
}

class _$SignInWithEmailCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailCopyWith<$Res> {
  _$SignInWithEmailCopyWithImpl(
      SignInWithEmail _value, $Res Function(SignInWithEmail) _then)
      : super(_value, (v) => _then(v as SignInWithEmail));

  @override
  SignInWithEmail get _value => super._value as SignInWithEmail;
}

class _$SignInWithEmail implements SignInWithEmail {
  const _$SignInWithEmail();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result signUpWithEmail(),
    @required Result signInWithEmail(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmail != null);
    assert(signInWithEmail != null);
    assert(signInWithGoogle != null);
    return signInWithEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithEmail(),
    Result signInWithEmail(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signUpWithEmail(SignUpWithEmail value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmail != null);
    assert(signInWithEmail != null);
    assert(signInWithGoogle != null);
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signUpWithEmail(SignUpWithEmail value),
    Result signInWithEmail(SignInWithEmail value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmail implements SignInFormEvent {
  const factory SignInWithEmail() = _$SignInWithEmail;
}

abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res>;
}

class _$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(
      SignInWithGoogle _value, $Res Function(SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as SignInWithGoogle));

  @override
  SignInWithGoogle get _value => super._value as SignInWithGoogle;
}

class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result signUpWithEmail(),
    @required Result signInWithEmail(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmail != null);
    assert(signInWithEmail != null);
    assert(signInWithGoogle != null);
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithEmail(),
    Result signInWithEmail(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signUpWithEmail(SignUpWithEmail value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmail != null);
    assert(signInWithEmail != null);
    assert(signInWithGoogle != null);
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signUpWithEmail(SignUpWithEmail value),
    Result signInWithEmail(SignInWithEmail value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements SignInFormEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}
