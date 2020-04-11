// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'borrower_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BorrowerDetailEventTearOff {
  const _$BorrowerDetailEventTearOff();

  GetBorrowerEvent getBorrower(String idString) {
    return GetBorrowerEvent(
      idString,
    );
  }

  DummyEvent dummyEvent() {
    return const DummyEvent();
  }
}

// ignore: unused_element
const $BorrowerDetailEvent = _$BorrowerDetailEventTearOff();

mixin _$BorrowerDetailEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getBorrower(String idString),
    @required Result dummyEvent(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getBorrower(String idString),
    Result dummyEvent(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getBorrower(GetBorrowerEvent value),
    @required Result dummyEvent(DummyEvent value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getBorrower(GetBorrowerEvent value),
    Result dummyEvent(DummyEvent value),
    @required Result orElse(),
  });
}

abstract class $BorrowerDetailEventCopyWith<$Res> {
  factory $BorrowerDetailEventCopyWith(
          BorrowerDetailEvent value, $Res Function(BorrowerDetailEvent) then) =
      _$BorrowerDetailEventCopyWithImpl<$Res>;
}

class _$BorrowerDetailEventCopyWithImpl<$Res>
    implements $BorrowerDetailEventCopyWith<$Res> {
  _$BorrowerDetailEventCopyWithImpl(this._value, this._then);

  final BorrowerDetailEvent _value;

  // ignore: unused_field
  final $Res Function(BorrowerDetailEvent) _then;
}

abstract class $GetBorrowerEventCopyWith<$Res> {
  factory $GetBorrowerEventCopyWith(
          GetBorrowerEvent value, $Res Function(GetBorrowerEvent) then) =
      _$GetBorrowerEventCopyWithImpl<$Res>;

  $Res call({String idString});
}

class _$GetBorrowerEventCopyWithImpl<$Res>
    extends _$BorrowerDetailEventCopyWithImpl<$Res>
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
    return 'BorrowerDetailEvent.getBorrower(idString: $idString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BorrowerDetailEvent.getBorrower'))
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
    @required Result dummyEvent(),
  }) {
    assert(getBorrower != null);
    assert(dummyEvent != null);
    return getBorrower(idString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getBorrower(String idString),
    Result dummyEvent(),
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
    @required Result dummyEvent(DummyEvent value),
  }) {
    assert(getBorrower != null);
    assert(dummyEvent != null);
    return getBorrower(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getBorrower(GetBorrowerEvent value),
    Result dummyEvent(DummyEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getBorrower != null) {
      return getBorrower(this);
    }
    return orElse();
  }
}

abstract class GetBorrowerEvent implements BorrowerDetailEvent {
  const factory GetBorrowerEvent(String idString) = _$GetBorrowerEvent;

  String get idString;

  $GetBorrowerEventCopyWith<GetBorrowerEvent> get copyWith;
}

abstract class $DummyEventCopyWith<$Res> {
  factory $DummyEventCopyWith(
          DummyEvent value, $Res Function(DummyEvent) then) =
      _$DummyEventCopyWithImpl<$Res>;
}

class _$DummyEventCopyWithImpl<$Res>
    extends _$BorrowerDetailEventCopyWithImpl<$Res>
    implements $DummyEventCopyWith<$Res> {
  _$DummyEventCopyWithImpl(DummyEvent _value, $Res Function(DummyEvent) _then)
      : super(_value, (v) => _then(v as DummyEvent));

  @override
  DummyEvent get _value => super._value as DummyEvent;
}

class _$DummyEvent with DiagnosticableTreeMixin implements DummyEvent {
  const _$DummyEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BorrowerDetailEvent.dummyEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BorrowerDetailEvent.dummyEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DummyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getBorrower(String idString),
    @required Result dummyEvent(),
  }) {
    assert(getBorrower != null);
    assert(dummyEvent != null);
    return dummyEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getBorrower(String idString),
    Result dummyEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dummyEvent != null) {
      return dummyEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getBorrower(GetBorrowerEvent value),
    @required Result dummyEvent(DummyEvent value),
  }) {
    assert(getBorrower != null);
    assert(dummyEvent != null);
    return dummyEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getBorrower(GetBorrowerEvent value),
    Result dummyEvent(DummyEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dummyEvent != null) {
      return dummyEvent(this);
    }
    return orElse();
  }
}

abstract class DummyEvent implements BorrowerDetailEvent {
  const factory DummyEvent() = _$DummyEvent;
}
