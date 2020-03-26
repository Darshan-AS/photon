import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photon/features/borrower/presentation/bloc/bloc.dart';
import 'package:photon/features/borrower/presentation/widgets/widgets.dart';

class BorrowerDetail extends StatelessWidget {
  final String id;

  const BorrowerDetail({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Borrower Detail'),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: <Widget>[
          BlocBuilder<BorrowerBloc, BorrowerState>(
            builder: (context, state) {
              if (state is Empty) {
                return MessageWidget(
                    message: "Oops! No Borrower. Maybe you are screwed?");
              } else if (state is Error) {
                return MessageWidget(message: state.message);
              } else if (state is Loading) {
                return LoadingWidget();
              } else if (state is BorrowerLoaded) {
                return Profile();
              } else {
                return null;
              }
            },
          ),
          Expanded(child: TransactionListView()),
        ],
      ),
    );
  }
}
