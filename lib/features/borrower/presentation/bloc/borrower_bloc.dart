import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:photon/core/usecases/usecase.dart';
import 'package:photon/core/util/input_converter.dart';
import 'package:photon/features/borrower/domain/usecases/get_all_borrowers.dart';
import 'package:photon/features/borrower/domain/usecases/get_borrower.dart';

import './bloc.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid input: the value should be a non negative integer';

class BorrowerBloc extends Bloc<BorrowerEvent, BorrowerState> {
  final GetBorrower getBorrower;
  final GetAllBorrowers getAllBorrowers;
  final InputConverter inputConverter;

  BorrowerBloc({
    @required this.getBorrower,
    @required this.getAllBorrowers,
    @required this.inputConverter,
  })  : assert(getBorrower != null),
        assert(getAllBorrowers != null),
        assert(inputConverter != null);

  @override
  BorrowerState get initialState => Empty();

  @override
  Stream<BorrowerState> mapEventToState(BorrowerEvent event) async* {
    yield* event.map(getBorrower: (e) async* {
      yield* _yieldBorrower(e);
    }, getAllBorrowers: (_) async* {
      yield* _yieldAllBorrowers();
    });
  }

  Stream<BorrowerState> _yieldBorrower(GetBorrowerEvent event) async* {
    final inputEither = inputConverter.toInt(event.idString);

    yield* inputEither.fold(
      (failure) async* {
        yield BorrowerState.error(message: INVALID_INPUT_FAILURE_MESSAGE);
      },
      (id) async* {
        yield BorrowerState.loading();
        final borrowerEither = await getBorrower(Params(id: id));
        yield borrowerEither.fold(
          (failure) => BorrowerState.error(message: SERVER_FAILURE_MESSAGE),
          (borrower) => BorrowerState.borrowerLoaded(borrower: borrower),
        );
      },
    );
  }

  Stream<BorrowerState> _yieldAllBorrowers() async* {
    yield BorrowerState.loading();
    final borrowersListEither = await getAllBorrowers(NoParams());
    yield borrowersListEither.fold(
      (failure) => BorrowerState.error(message: SERVER_FAILURE_MESSAGE),
      (borrowersList) =>
          BorrowerState.allBorrowersLoaded(borrowersList: borrowersList),
    );
  }
}
