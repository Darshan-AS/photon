import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';

part 'borrower_detail_state.freezed.dart';

@freezed
abstract class BorrowerDetailState with _$BorrowerDetailState {
  const factory BorrowerDetailState.empty() = Empty;

  const factory BorrowerDetailState.loading() = Loading;

  const factory BorrowerDetailState.borrowerLoaded(
      {@required Borrower borrower}) = BorrowerLoaded;

  const factory BorrowerDetailState.error({String message}) = Error;
}
