// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'borrowers_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BorrowersListStateTearOff {
  const _$BorrowersListStateTearOff();

  Empty empty() {
    return const Empty();
  }

  Loading loading() {
    return const Loading();
  }

  AllBorrowersLoaded allBorrowersLoaded(
      {@required List<Borrower> borrowersList}) {
    return AllBorrowersLoaded(
      borrowersList: borrowersList,
    );
  }

  Error error({String message}) {
    return Error(
      message: message,
    );
  }
}

// ignore: unused_element
const $BorrowersListState = _$BorrowersListStateTearOff();

mixin _$BorrowersListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result allBorrowersLoaded(@required List<Borrower> borrowersList),
    @required Result error(String message),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result allBorrowersLoaded(@required List<Borrower> borrowersList),
    Result error(String message),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty value),
    @required Result loading(Loading value),
    @required Result allBorrowersLoaded(AllBorrowersLoaded value),
    @required Result error(Error value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty value),
    Result loading(Loading value),
    Result allBorrowersLoaded(AllBorrowersLoaded value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $BorrowersListStateCopyWith<$Res> {
  factory $BorrowersListStateCopyWith(
          BorrowersListState value, $Res Function(BorrowersListState) then) =
      _$BorrowersListStateCopyWithImpl<$Res>;
}

class _$BorrowersListStateCopyWithImpl<$Res>
    implements $BorrowersListStateCopyWith<$Res> {
  _$BorrowersListStateCopyWithImpl(this._value, this._then);

  final BorrowersListState _value;

  // ignore: unused_field
  final $Res Function(BorrowersListState) _then;
}

abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

class _$EmptyCopyWithImpl<$Res> extends _$BorrowersListStateCopyWithImpl<$Res>
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
    return 'BorrowersListState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BorrowersListState.empty'));
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
    @required Result allBorrowersLoaded(@required List<Borrower> borrowersList),
    @required Result error(String message),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(allBorrowersLoaded != null);
    assert(error != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result allBorrowersLoaded(@required List<Borrower> borrowersList),
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
    @required Result allBorrowersLoaded(AllBorrowersLoaded value),
    @required Result error(Error value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(allBorrowersLoaded != null);
    assert(error != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty value),
    Result loading(Loading value),
    Result allBorrowersLoaded(AllBorrowersLoaded value),
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

abstract class Empty implements BorrowersListState {
  const factory Empty() = _$Empty;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$BorrowersListStateCopyWithImpl<$Res>
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
    return 'BorrowersListState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BorrowersListState.loading'));
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
    @required Result allBorrowersLoaded(@required List<Borrower> borrowersList),
    @required Result error(String message),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(allBorrowersLoaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result allBorrowersLoaded(@required List<Borrower> borrowersList),
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
    @required Result allBorrowersLoaded(AllBorrowersLoaded value),
    @required Result error(Error value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(allBorrowersLoaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty value),
    Result loading(Loading value),
    Result allBorrowersLoaded(AllBorrowersLoaded value),
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

abstract class Loading implements BorrowersListState {
  const factory Loading() = _$Loading;
}

abstract class $AllBorrowersLoadedCopyWith<$Res> {
  factory $AllBorrowersLoadedCopyWith(
          AllBorrowersLoaded value, $Res Function(AllBorrowersLoaded) then) =
      _$AllBorrowersLoadedCopyWithImpl<$Res>;

  $Res call({List<Borrower> borrowersList});
}

class _$AllBorrowersLoadedCopyWithImpl<$Res>
    extends _$BorrowersListStateCopyWithImpl<$Res>
    implements $AllBorrowersLoadedCopyWith<$Res> {
  _$AllBorrowersLoadedCopyWithImpl(
      AllBorrowersLoaded _value, $Res Function(AllBorrowersLoaded) _then)
      : super(_value, (v) => _then(v as AllBorrowersLoaded));

  @override
  AllBorrowersLoaded get _value => super._value as AllBorrowersLoaded;

  @override
  $Res call({
    Object borrowersList = freezed,
  }) {
    return _then(AllBorrowersLoaded(
      borrowersList: borrowersList == freezed
          ? _value.borrowersList
          : borrowersList as List<Borrower>,
    ));
  }
}

class _$AllBorrowersLoaded
    with DiagnosticableTreeMixin
    implements AllBorrowersLoaded {
  const _$AllBorrowersLoaded({@required this.borrowersList})
      : assert(borrowersList != null);

  @override
  final List<Borrower> borrowersList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BorrowersListState.allBorrowersLoaded(borrowersList: $borrowersList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'BorrowersListState.allBorrowersLoaded'))
      ..add(DiagnosticsProperty('borrowersList', borrowersList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AllBorrowersLoaded &&
            (identical(other.borrowersList, borrowersList) ||
                const DeepCollectionEquality()
                    .equals(other.borrowersList, borrowersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(borrowersList);

  @override
  $AllBorrowersLoadedCopyWith<AllBorrowersLoaded> get copyWith =>
      _$AllBorrowersLoadedCopyWithImpl<AllBorrowersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loading(),
    @required Result allBorrowersLoaded(@required List<Borrower> borrowersList),
    @required Result error(String message),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(allBorrowersLoaded != null);
    assert(error != null);
    return allBorrowersLoaded(borrowersList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result allBorrowersLoaded(@required List<Borrower> borrowersList),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allBorrowersLoaded != null) {
      return allBorrowersLoaded(borrowersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty value),
    @required Result loading(Loading value),
    @required Result allBorrowersLoaded(AllBorrowersLoaded value),
    @required Result error(Error value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(allBorrowersLoaded != null);
    assert(error != null);
    return allBorrowersLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty value),
    Result loading(Loading value),
    Result allBorrowersLoaded(AllBorrowersLoaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allBorrowersLoaded != null) {
      return allBorrowersLoaded(this);
    }
    return orElse();
  }
}

abstract class AllBorrowersLoaded implements BorrowersListState {
  const factory AllBorrowersLoaded({@required List<Borrower> borrowersList}) =
      _$AllBorrowersLoaded;

  List<Borrower> get borrowersList;

  $AllBorrowersLoadedCopyWith<AllBorrowersLoaded> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;

  $Res call({String message});
}

class _$ErrorCopyWithImpl<$Res> extends _$BorrowersListStateCopyWithImpl<$Res>
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
    return 'BorrowersListState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BorrowersListState.error'))
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
    @required Result allBorrowersLoaded(@required List<Borrower> borrowersList),
    @required Result error(String message),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(allBorrowersLoaded != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loading(),
    Result allBorrowersLoaded(@required List<Borrower> borrowersList),
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
    @required Result allBorrowersLoaded(AllBorrowersLoaded value),
    @required Result error(Error value),
  }) {
    assert(empty != null);
    assert(loading != null);
    assert(allBorrowersLoaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty value),
    Result loading(Loading value),
    Result allBorrowersLoaded(AllBorrowersLoaded value),
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

abstract class Error implements BorrowersListState {
  const factory Error({String message}) = _$Error;

  String get message;

  $ErrorCopyWith<Error> get copyWith;
}
