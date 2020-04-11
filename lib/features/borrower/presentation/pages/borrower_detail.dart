import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photon/features/borrower/presentation/bloc/borrower_detail/bloc.dart';
import 'package:photon/features/borrower/presentation/widgets/widgets.dart';

class BorrowerDetail extends StatelessWidget {
  final String id;

  const BorrowerDetail({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    addGetBorrowerEvent(context, id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Borrower Detail'),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: <Widget>[
          BlocBuilder<BorrowerDetailBloc, BorrowerDetailState>(
            builder: (context, state) {
              return state.map(
                empty: (_) => MessageWidget(
                    message: "Oops! No Borrower. Maybe you are screwed?"),
                loading: (_) => LoadingWidget(),
                borrowerLoaded: (_) => Profile(),
                error: (s) => MessageWidget(message: s.message),
              );
            },
          ),
          Expanded(child: TransactionListView()),
        ],
      ),
    );
  }

  void addGetBorrowerEvent(BuildContext context, String idString) {
    BlocProvider.of<BorrowerDetailBloc>(context)
        .add(BorrowerDetailEvent.getBorrower(idString));
  }
}
