import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String message;

  const MessageWidget({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: SingleChildScrollView(child: Text(message)));
  }
}
