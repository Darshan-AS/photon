import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';

abstract class BorrowerState extends Equatable {
  const BorrowerState();

  @override
  List<Object> get props => [];
}

class Empty extends BorrowerState {}

class Loading extends BorrowerState {}

class BorrowerLoaded extends BorrowerState {
  final Borrower borrower;

  BorrowerLoaded({@required this.borrower});

  @override
  List<Object> get props => [borrower];
}

class AllBorrowersLoaded extends BorrowerState {
  final List<Borrower> borrowersList;

  AllBorrowersLoaded({@required this.borrowersList});

  @override
  List<Object> get props => [borrowersList];
}

class Error extends BorrowerState {
  final String message;

  Error({@required this.message});

  @override
  List<Object> get props => [message];
}
