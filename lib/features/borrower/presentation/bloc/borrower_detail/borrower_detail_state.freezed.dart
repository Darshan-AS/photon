// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'borrower_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BorrowerDetailStateTearOff {
  const _$BorrowerDetailStateTearOff();

  Empty empty() {
    return const Empty();
  }

  Loading loading() {
    return const Loading();
  }

  BorrowerLoaded borrowerLoaded({@required Borrower borrower}) {
    return BorrowerLoaded(
      borrower: borrower,
    );
  }

  Error error({String message}) {
    return Error(
      message: message,
    );
  }
}

// ignore: unused_element
const $BorrowerDetailState = _$BorrowerDetailStateTearOff();

mixin _$BorrowerDetailState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result borrowerLoaded(@required Borrower borrower),
    @required Result error(String message),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result borrowerLoaded(@required Borrower borrower),
    Result error(String message),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty value),
    @required Result loading(Loading value),
    @required Result borrowerLoaded(BorrowerLoaded value),
    @required Result error(Error value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty value),
    Result loading(Loading value),
    Result borrowerLoaded(BorrowerLoaded value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $BorrowerDetailStateCopyWith<$Res> {
  factory $BorrowerDetailStateCopyWith(
          BorrowerDetailState value, $Res Function(BorrowerDetailState) then) =
      _$BorrowerDetailStateCopyWithImpl<$Res>;
}

class _$BorrowerDetailStateCopyWithImpl<$Res>
    implements $BorrowerDetailStateCopyWith<$Res> {
  _$BorrowerDetailStateCopyWithImpl(this._value, this._then);

  final BorrowerDetailState _value;

  // ignore: unused_field
  final $Res Function(BorrowerDetailState) _then;
}

abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

class _$EmptyCopyWithImpl<$Res> extends _$BorrowerDetailStateCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

class _$Empty with DiagnosticableTreeMixin implements Empty {
  const _$Empty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BorrowerDetailState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BorrowerDetailState.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result borrowerLoaded(@required Borrower borrower),
    @required Result error(String message),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(borrowerLoaded != null);
    assert(error != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result borrowerLoaded(@required Borrower borrower),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty value),
    @required Result loading(Loading value),
    @required Result borrowerLoaded(BorrowerLoaded value),
    @required Result error(Error value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(borrowerLoaded != null);
    assert(error != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty value),
    Result loading(Loading value),
    Result borrowerLoaded(BorrowerLoaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements BorrowerDetailState {
  const factory Empty() = _$Empty;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res>
    extends _$BorrowerDetailStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BorrowerDetailState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BorrowerDetailState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result borrowerLoaded(@required Borrower borrower),
    @required Result error(String message),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(borrowerLoaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result borrowerLoaded(@required Borrower borrower),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty value),
    @required Result loading(Loading value),
    @required Result borrowerLoaded(BorrowerLoaded value),
    @required Result error(Error value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(borrowerLoaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty value),
    Result loading(Loading value),
    Result borrowerLoaded(BorrowerLoaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BorrowerDetailState {
  const factory Loading() = _$Loading;
}

abstract class $BorrowerLoadedCopyWith<$Res> {
  factory $BorrowerLoadedCopyWith(
          BorrowerLoaded value, $Res Function(BorrowerLoaded) then) =
      _$BorrowerLoadedCopyWithImpl<$Res>;

  $Res call({Borrower borrower});
}

class _$BorrowerLoadedCopyWithImpl<$Res>
    extends _$BorrowerDetailStateCopyWithImpl<$Res>
    implements $BorrowerLoadedCopyWith<$Res> {
  _$BorrowerLoadedCopyWithImpl(
      BorrowerLoaded _value, $Res Function(BorrowerLoaded) _then)
      : super(_value, (v) => _then(v as BorrowerLoaded));

  @override
  BorrowerLoaded get _value => super._value as BorrowerLoaded;

  @override
  $Res call({
    Object borrower = freezed,
  }) {
    return _then(BorrowerLoaded(
      borrower: borrower == freezed ? _value.borrower : borrower as Borrower,
    ));
  }
}

class _$BorrowerLoaded with DiagnosticableTreeMixin implements BorrowerLoaded {
  const _$BorrowerLoaded({@required this.borrower}) : assert(borrower != null);

  @override
  final Borrower borrower;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BorrowerDetailState.borrowerLoaded(borrower: $borrower)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BorrowerDetailState.borrowerLoaded'))
      ..add(DiagnosticsProperty('borrower', borrower));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BorrowerLoaded &&
            (identical(other.borrower, borrower) ||
                const DeepCollectionEquality()
                    .equals(other.borrower, borrower)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(borrower);

  @override
  $BorrowerLoadedCopyWith<BorrowerLoaded> get copyWith =>
      _$BorrowerLoadedCopyWithImpl<BorrowerLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result borrowerLoaded(@required Borrower borrower),
    @required Result error(String message),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(borrowerLoaded != null);
    assert(error != null);
    return borrowerLoaded(borrower);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result borrowerLoaded(@required Borrower borrower),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (borrowerLoaded != null) {
      return borrowerLoaded(borrower);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty value),
    @required Result loading(Loading value),
    @required Result borrowerLoaded(BorrowerLoaded value),
    @required Result error(Error value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(borrowerLoaded != null);
    assert(error != null);
    return borrowerLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty value),
    Result loading(Loading value),
    Result borrowerLoaded(BorrowerLoaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (borrowerLoaded != null) {
      return borrowerLoaded(this);
    }
    return orElse();
  }
}

abstract class BorrowerLoaded implements BorrowerDetailState {
  const factory BorrowerLoaded({@required Borrower borrower}) =
      _$BorrowerLoaded;

  Borrower get borrower;

  $BorrowerLoadedCopyWith<BorrowerLoaded> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;

  $Res call({String message});
}

class _$ErrorCopyWithImpl<$Res> extends _$BorrowerDetailStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error({this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BorrowerDetailState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BorrowerDetailState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result borrowerLoaded(@required Borrower borrower),
    @required Result error(String message),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(borrowerLoaded != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result borrowerLoaded(@required Borrower borrower),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty value),
    @required Result loading(Loading value),
    @required Result borrowerLoaded(BorrowerLoaded value),
    @required Result error(Error value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(borrowerLoaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty value),
    Result loading(Loading value),
    Result borrowerLoaded(BorrowerLoaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements BorrowerDetailState {
  const factory Error({String message}) = _$Error;

  String get message;

  $ErrorCopyWith<Error> get copyWith;
}
