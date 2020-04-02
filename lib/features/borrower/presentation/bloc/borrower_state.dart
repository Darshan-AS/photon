import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';

part 'borrower_state.freezed.dart';

@freezed
abstract class BorrowerState with _$BorrowerState {
  const factory BorrowerState.empty() = Empty;

  const factory BorrowerState.loading() = Loading;

  const factory BorrowerState.borrowerLoaded({@required Borrower borrower}) =
      BorrowerLoaded;

  const factory BorrowerState.allBorrowersLoaded(
      {@required List<Borrower> borrowersList}) = AllBorrowersLoaded;

  const factory BorrowerState.error({String message}) = Error;
}
