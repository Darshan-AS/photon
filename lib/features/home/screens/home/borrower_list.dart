import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';
import 'package:photon/features/borrower/presentation/bloc/borrowers_list/bloc.dart';
import 'package:photon/features/borrower/presentation/widgets/widgets.dart';
import 'package:photon/router.dart';

class BorrowerListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    addGetAllBorrowersEvent(context);
    return BlocBuilder<BorrowersListBloc, BorrowersListState>(
      builder: (context, state) {
        return state.map(
          empty: (_) => MessageWidget(
              message: "Oops! No Borrowers. Maybe you are screwed?"),
          loading: (_) => LoadingWidget(),
          allBorrowersLoaded: (s) {
            return ListView(
              children: s.borrowersList
                  .map((borrower) => BorrowerListTile(borrower: borrower))
                  .toList(),
            );
          },
          error: (s) => MessageWidget(message: s.message),
        );
      },
    );
  }

  void addGetAllBorrowersEvent(BuildContext context) {
    BlocProvider.of<BorrowersListBloc>(context)
        .add(BorrowersListEvent.getAllBorrowersEvent());
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
      onTap: () => Navigator.pushNamed(
        context,
        Router.borrowerDetailRoute,
        arguments: {'id': borrower.id.toString()},
      ),
    );
  }
}
