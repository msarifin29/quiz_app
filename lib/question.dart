import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.questions}) : super(key: key);
  final String questions;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 20),
      child: Text(
        questions,
        style: TextStyle(
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
