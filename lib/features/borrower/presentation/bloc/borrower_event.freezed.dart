// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'borrower_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BorrowerEventTearOff {
  const _$BorrowerEventTearOff();

  GetBorrowerEvent getBorrower(String idString) {
    return GetBorrowerEvent(
      idString,
    );
  }

  GetAllBorrowersEvent getAllBorrowers() {
    return const GetAllBorrowersEvent();
  }
}

// ignore: unused_element
const $BorrowerEvent = _$BorrowerEventTearOff();

mixin _$BorrowerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getBorrower(String idString),
    @required Result getAllBorrowers(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getBorrower(String idString),
    Result getAllBorrowers(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getBorrower(GetBorrowerEvent value),
    @required Result getAllBorrowers(GetAllBorrowersEvent value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getBorrower(GetBorrowerEvent value),
    Result getAllBorrowers(GetAllBorrowersEvent value),
    @required Result orElse(),
  });
}

abstract class $BorrowerEventCopyWith<$Res> {
  factory $BorrowerEventCopyWith(
          BorrowerEvent value, $Res Function(BorrowerEvent) then) =
      _$BorrowerEventCopyWithImpl<$Res>;
}

class _$BorrowerEventCopyWithImpl<$Res>
    implements $BorrowerEventCopyWith<$Res> {
  _$BorrowerEventCopyWithImpl(this._value, this._then);

  final BorrowerEvent _value;

  // ignore: unused_field
  final $Res Function(BorrowerEvent) _then;
}

abstract class $GetBorrowerEventCopyWith<$Res> {
  factory $GetBorrowerEventCopyWith(
          GetBorrowerEvent value, $Res Function(GetBorrowerEvent) then) =
      _$GetBorrowerEventCopyWithImpl<$Res>;

  $Res call({String idString});
}

class _$GetBorrowerEventCopyWithImpl<$Res>
    extends _$BorrowerEventCopyWithImpl<$Res>
    implements $GetBorrowerEventCopyWith<$Res> {
  _$GetBorrowerEventCopyWithImpl(
      GetBorrowerEvent _value, $Res Function(GetBorrowerEvent) _then)
      : super(_value, (v) => _then(v as GetBorrowerEvent));

  @override
  GetBorrowerEvent get _value => super._value as GetBorrowerEvent;

  @override
  $Res call({
    Object idString = freezed,
  }) {
    return _then(GetBorrowerEvent(
      idString == freezed ? _value.idString : idString as String,
    ));
  }
}

class _$GetBorrowerEvent
    with DiagnosticableTreeMixin
    implements GetBorrowerEvent {
  const _$GetBorrowerEvent(this.idString) : assert(idString != null);

  @override
  final String idString;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BorrowerEvent.getBorrower(idString: $idString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BorrowerEvent.getBorrower'))
      ..add(DiagnosticsProperty('idString', idString));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetBorrowerEvent &&
            (identical(other.idString, idString) ||
                const DeepCollectionEquality()
                    .equals(other.idString, idString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(idString);

  @override
  $GetBorrowerEventCopyWith<GetBorrowerEvent> get copyWith =>
      _$GetBorrowerEventCopyWithImpl<GetBorrowerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getBorrower(String idString),
    @required Result getAllBorrowers(),
  }) {
    assert(getBorrower != null);
    assert(getAllBorrowers != null);
    return getBorrower(idString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getBorrower(String idString),
    Result getAllBorrowers(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getBorrower != null) {
      return getBorrower(idString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getBorrower(GetBorrowerEvent value),
    @required Result getAllBorrowers(GetAllBorrowersEvent value),
  }) {
    assert(getBorrower != null);
    assert(getAllBorrowers != null);
    return getBorrower(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getBorrower(GetBorrowerEvent value),
    Result getAllBorrowers(GetAllBorrowersEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getBorrower != null) {
      return getBorrower(this);
    }
    return orElse();
  }
}

abstract class GetBorrowerEvent implements BorrowerEvent {
  const factory GetBorrowerEvent(String idString) = _$GetBorrowerEvent;

  String get idString;

  $GetBorrowerEventCopyWith<GetBorrowerEvent> get copyWith;
}

abstract class $GetAllBorrowersEventCopyWith<$Res> {
  factory $GetAllBorrowersEventCopyWith(GetAllBorrowersEvent value,
          $Res Function(GetAllBorrowersEvent) then) =
      _$GetAllBorrowersEventCopyWithImpl<$Res>;
}

class _$GetAllBorrowersEventCopyWithImpl<$Res>
    extends _$BorrowerEventCopyWithImpl<$Res>
    implements $GetAllBorrowersEventCopyWith<$Res> {
  _$GetAllBorrowersEventCopyWithImpl(
      GetAllBorrowersEvent _value, $Res Function(GetAllBorrowersEvent) _then)
      : super(_value, (v) => _then(v as GetAllBorrowersEvent));

  @override
  GetAllBorrowersEvent get _value => super._value as GetAllBorrowersEvent;
}

class _$GetAllBorrowersEvent
    with DiagnosticableTreeMixin
    implements GetAllBorrowersEvent {
  const _$GetAllBorrowersEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BorrowerEvent.getAllBorrowers()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BorrowerEvent.getAllBorrowers'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllBorrowersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getBorrower(String idString),
    @required Result getAllBorrowers(),
  }) {
    assert(getBorrower != null);
    assert(getAllBorrowers != null);
    return getAllBorrowers();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getBorrower(String idString),
    Result getAllBorrowers(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllBorrowers != null) {
      return getAllBorrowers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getBorrower(GetBorrowerEvent value),
    @required Result getAllBorrowers(GetAllBorrowersEvent value),
  }) {
    assert(getBorrower != null);
    assert(getAllBorrowers != null);
    return getAllBorrowers(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getBorrower(GetBorrowerEvent value),
    Result getAllBorrowers(GetAllBorrowersEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllBorrowers != null) {
      return getAllBorrowers(this);
    }
    return orElse();
  }
}

abstract class GetAllBorrowersEvent implements BorrowerEvent {
  const factory GetAllBorrowersEvent() = _$GetAllBorrowersEvent;
}
