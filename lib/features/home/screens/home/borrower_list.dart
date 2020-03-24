import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';
import 'package:photon/features/borrower/presentation/bloc/bloc.dart';
import 'package:photon/features/borrower/presentation/widgets/widgets.dart';
import 'package:photon/router.dart';

class BorrowerListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    addGetAllBorrowersEvent(context);
    return BlocBuilder<BorrowerBloc, BorrowerState>(
      builder: (context, state) {
        if (state is Empty) {
          return MessageWidget(
              message: "Oops! No Borrowers. Maybe you are screwed?");
        } else if (state is Error) {
          return MessageWidget(message: state.message);
        } else if (state is Loading) {
          return LoadingWidget();
        } else if (state is AllBorrowersLoaded) {
          return ListView(
            children: state.borrowersList
                .map((borrower) => BorrowerListTile(borrower: borrower))
                .toList(),
          );
        } else {
          return null;
        }
      },
    );
  }

  void addGetAllBorrowersEvent(BuildContext context) {
    BlocProvider.of<BorrowerBloc>(context).add(GetAllBorrowersEvent());
  }
}

class BorrowerListTile extends StatelessWidget {
  final Borrower borrower;

  const BorrowerListTile({Key key, this.borrower}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(borrower.name[0].toUpperCase())),
      title: Text(borrower.name),
      subtitle: Text(borrower.id.toString()),
      trailing: Text('Rs 150000'),
      onTap: () {
        addGetBorrowerEvent(context);
        Navigator.pushNamed(context, Router.borrowerRoute);
      },
    );
  }

  void addGetBorrowerEvent(BuildContext context) {
    BlocProvider.of<BorrowerBloc>(context).add(GetBorrowerEvent('1'));
  }
}
