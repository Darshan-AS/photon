// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'borrowers_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BorrowersListEventTearOff {
  const _$BorrowersListEventTearOff();

  GetAllBorrowersEvent getAllBorrowersEvent() {
    return const GetAllBorrowersEvent();
  }

  DummyEvent dummyEvent() {
    return const DummyEvent();
  }
}

// ignore: unused_element
const $BorrowersListEvent = _$BorrowersListEventTearOff();

mixin _$BorrowersListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllBorrowersEvent(),
    @required Result dummyEvent(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllBorrowersEvent(),
    Result dummyEvent(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllBorrowersEvent(GetAllBorrowersEvent value),
    @required Result dummyEvent(DummyEvent value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllBorrowersEvent(GetAllBorrowersEvent value),
    Result dummyEvent(DummyEvent value),
    @required Result orElse(),
  });
}

abstract class $BorrowersListEventCopyWith<$Res> {
  factory $BorrowersListEventCopyWith(
          BorrowersListEvent value, $Res Function(BorrowersListEvent) then) =
      _$BorrowersListEventCopyWithImpl<$Res>;
}

class _$BorrowersListEventCopyWithImpl<$Res>
    implements $BorrowersListEventCopyWith<$Res> {
  _$BorrowersListEventCopyWithImpl(this._value, this._then);

  final BorrowersListEvent _value;

  // ignore: unused_field
  final $Res Function(BorrowersListEvent) _then;
}

abstract class $GetAllBorrowersEventCopyWith<$Res> {
  factory $GetAllBorrowersEventCopyWith(GetAllBorrowersEvent value,
          $Res Function(GetAllBorrowersEvent) then) =
      _$GetAllBorrowersEventCopyWithImpl<$Res>;
}

class _$GetAllBorrowersEventCopyWithImpl<$Res>
    extends _$BorrowersListEventCopyWithImpl<$Res>
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
    return 'BorrowersListEvent.getAllBorrowersEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BorrowersListEvent.getAllBorrowersEvent'));
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
    @required Result getAllBorrowersEvent(),
    @required Result dummyEvent(),
  }) {
    assert(getAllBorrowersEvent != null);
    assert(dummyEvent != null);
    return getAllBorrowersEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllBorrowersEvent(),
    Result dummyEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllBorrowersEvent != null) {
      return getAllBorrowersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllBorrowersEvent(GetAllBorrowersEvent value),
    @required Result dummyEvent(DummyEvent value),
  }) {
    assert(getAllBorrowersEvent != null);
    assert(dummyEvent != null);
    return getAllBorrowersEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllBorrowersEvent(GetAllBorrowersEvent value),
    Result dummyEvent(DummyEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllBorrowersEvent != null) {
      return getAllBorrowersEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllBorrowersEvent implements BorrowersListEvent {
  const factory GetAllBorrowersEvent() = _$GetAllBorrowersEvent;
}

abstract class $DummyEventCopyWith<$Res> {
  factory $DummyEventCopyWith(
          DummyEvent value, $Res Function(DummyEvent) then) =
      _$DummyEventCopyWithImpl<$Res>;
}

class _$DummyEventCopyWithImpl<$Res>
    extends _$BorrowersListEventCopyWithImpl<$Res>
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
    return 'BorrowersListEvent.dummyEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BorrowersListEvent.dummyEvent'));
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
    @required Result getAllBorrowersEvent(),
    @required Result dummyEvent(),
  }) {
    assert(getAllBorrowersEvent != null);
    assert(dummyEvent != null);
    return dummyEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllBorrowersEvent(),
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
    @required Result getAllBorrowersEvent(GetAllBorrowersEvent value),
    @required Result dummyEvent(DummyEvent value),
  }) {
    assert(getAllBorrowersEvent != null);
    assert(dummyEvent != null);
    return dummyEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllBorrowersEvent(GetAllBorrowersEvent value),
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

abstract class DummyEvent implements BorrowersListEvent {
  const factory DummyEvent() = _$DummyEvent;
}
