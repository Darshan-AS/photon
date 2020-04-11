import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';

part 'borrowers_list_state.freezed.dart';

@freezed
abstract class BorrowersListState with _$BorrowersListState {
  const factory BorrowersListState.empty() = Empty;

  const factory BorrowersListState.loading() = Loading;

  const factory BorrowersListState.allBorrowersLoaded(
      {@required List<Borrower> borrowersList}) = AllBorrowersLoaded;

  const factory BorrowersListState.error({String message}) = Error;
}
