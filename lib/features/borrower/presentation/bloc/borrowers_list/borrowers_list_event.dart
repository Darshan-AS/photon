import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'borrowers_list_event.freezed.dart';

@freezed
abstract class BorrowersListEvent with _$BorrowersListEvent {
  const factory BorrowersListEvent.getAllBorrowersEvent() =
      GetAllBorrowersEvent;

  const factory BorrowersListEvent.dummyEvent() = DummyEvent;
}
