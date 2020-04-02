import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'borrower_event.freezed.dart';

@freezed
abstract class BorrowerEvent with _$BorrowerEvent {
  const factory BorrowerEvent.getBorrower(String idString) = GetBorrowerEvent;

  const factory BorrowerEvent.getAllBorrowers() = GetAllBorrowersEvent;
}
