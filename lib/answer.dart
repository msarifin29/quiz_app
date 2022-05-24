// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({
    Key? key,
    required this.textAnswer,
    required this.selectHandler,
  }) : super(key: key);
  final String textAnswer;
  final VoidCallback selectHandler;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child:
            ElevatedButton(onPressed: selectHandler, child: Text(textAnswer)));
  }
}
