import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'borrower_detail_event.freezed.dart';

@freezed
abstract class BorrowerDetailEvent with _$BorrowerDetailEvent {
  const factory BorrowerDetailEvent.getBorrower(String idString) =
      GetBorrowerEvent;

  const factory BorrowerDetailEvent.dummyEvent() = DummyEvent;
}
