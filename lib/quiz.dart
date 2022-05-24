import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {Key? key,
      required this.pertanyaan,
      required this.questionIndex,
      required this.answerQuestion})
      : super(key: key);
  final List<Map<String, Object>> pertanyaan;
  final int questionIndex;
  final Function answerQuestion;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions: pertanyaan[questionIndex]['soal'] as String),
        ...(pertanyaan[questionIndex]['jawaban'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                selectHandler: () => answerQuestion(answer['nilai']),
                textAnswer: answer['text'] as String))
            .toList()
      ],
    );
  }
}
