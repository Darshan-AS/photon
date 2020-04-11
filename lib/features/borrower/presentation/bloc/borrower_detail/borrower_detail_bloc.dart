import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:photon/core/util/input_converter.dart';
import 'package:photon/features/borrower/domain/usecases/get_borrower.dart';

import 'bloc.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid input: the value should be a non negative integer';

class BorrowerDetailBloc
    extends Bloc<BorrowerDetailEvent, BorrowerDetailState> {
  final GetBorrower getBorrower;
  final InputConverter inputConverter;

  BorrowerDetailBloc({
    @required this.getBorrower,
    @required this.inputConverter,
  })  : assert(getBorrower != null),
        assert(inputConverter != null);

  @override
  BorrowerDetailState get initialState => BorrowerDetailState.empty();

  @override
  Stream<BorrowerDetailState> mapEventToState(
      BorrowerDetailEvent event) async* {
    yield* event.map(
      getBorrower: (e) async* {
        yield* _yieldBorrower(e);
      },
      dummyEvent: (_) async* {
        yield BorrowerDetailState.empty();
      },
    );
  }

  Stream<BorrowerDetailState> _yieldBorrower(GetBorrowerEvent event) async* {
    final inputEither = inputConverter.toInt(event.idString);

    yield* inputEither.fold(
      (failure) async* {
        yield BorrowerDetailState.error(message: INVALID_INPUT_FAILURE_MESSAGE);
      },
      (id) async* {
        yield BorrowerDetailState.loading();
        final borrowerEither = await getBorrower(Params(id: id));
        yield borrowerEither.fold(
          (failure) =>
              BorrowerDetailState.error(message: SERVER_FAILURE_MESSAGE),
          (borrower) => BorrowerDetailState.borrowerLoaded(borrower: borrower),
        );
      },
    );
  }
}
