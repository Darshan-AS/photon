import 'package:equatable/equatable.dart';

abstract class BorrowerEvent extends Equatable {
  const BorrowerEvent();

  @override
  List<Object> get props => [];
}

class GetBorrowerEvent extends BorrowerEvent {
  final String idString;

  GetBorrowerEvent(this.idString);

  @override
  List<Object> get props => [idString];
}

class GetAllBorrowersEvent extends BorrowerEvent {}
