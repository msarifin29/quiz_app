import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key, required this.resetQuestion, required this.totalNilai})
      : super(key: key);
  final VoidCallback resetQuestion;
  final int totalNilai;
  String get penilaian {
    String text;
    if (totalNilai <= 25) {
      text = 'Buruk';
    } else if (totalNilai <= 75) {
      text = 'Cukup';
    } else {
      text = 'Sempurna';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            penilaian,
            style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(onPressed: resetQuestion, child: Text('Reset'))
        ],
      ),
    );
  }
}
