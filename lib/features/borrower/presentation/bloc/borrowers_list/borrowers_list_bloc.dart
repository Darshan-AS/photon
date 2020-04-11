import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:photon/core/usecases/usecase.dart';
import 'package:photon/core/util/input_converter.dart';
import 'package:photon/features/borrower/domain/usecases/get_all_borrowers.dart';

import 'bloc.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid input: the value should be a non negative integer';

class BorrowersListBloc extends Bloc<BorrowersListEvent, BorrowersListState> {
  final GetAllBorrowers getAllBorrowers;
  final InputConverter inputConverter;

  BorrowersListBloc({
    @required this.getAllBorrowers,
    @required this.inputConverter,
  })  : assert(getAllBorrowers != null),
        assert(inputConverter != null);

  @override
  BorrowersListState get initialState => BorrowersListState.empty();

  @override
  Stream<BorrowersListState> mapEventToState(BorrowersListEvent event) async* {
    yield* event.map(getAllBorrowersEvent: (_) async* {
      yield* _yieldAllBorrowers();
    }, dummyEvent: (_) async* {
      yield BorrowersListState.empty();
    });
  }

  Stream<BorrowersListState> _yieldAllBorrowers() async* {
    yield BorrowersListState.loading();
    final borrowersListEither = await getAllBorrowers(NoParams());
    yield borrowersListEither.fold(
      (failure) => BorrowersListState.error(message: SERVER_FAILURE_MESSAGE),
      (borrowersList) =>
          BorrowersListState.allBorrowersLoaded(borrowersList: borrowersList),
    );
  }
}
