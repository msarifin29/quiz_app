import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';
import './question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final _pertanyaan = [
    {
      'soal': 'lagu dear good di ciptakan oleh ? ',
      'jawaban': [
        {'text': 'letto', 'nilai': 0},
        {'text': 'avenged', 'nilai': 0},
        {'text': 'dewa', 'nilai': 0},
        {'text': 'm.shadow', 'nilai': 25},
      ]
    },
    {
      'soal': 'film avenger berasal dari?',
      'jawaban': [
        {'text': 'jepang', 'nilai': 0},
        {'text': 'amerika', 'nilai': 25},
        {'text': 'china', 'nilai': 0},
        {'text': 'los angeles', 'nilai': 0},
      ]
    },
    {
      'soal': 'berasal hasil penjumlahan dari 1 + 1 ?',
      'jawaban': [
        {'text': '2', 'nilai': 25},
        {'text': '11', 'nilai': 0},
        {'text': '3', 'nilai': 0},
        {'text': 'dua', 'nilai': 0},
      ]
    },
    {
      'soal': 'lemon adalah?',
      'jawaban': [
        {'text': 'buah', 'nilai': 25},
        {'text': 'jus', 'nilai': 0},
        {'text': 'pemain game', 'nilai': 0},
        {'text': 'teks', 'nilai': 0},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int nilai) {
    _totalScore += nilai;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuestion() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Quiz')),
        body: _questionIndex < _pertanyaan.length
            ? Quiz(
                pertanyaan: _pertanyaan,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(totalNilai: _totalScore, resetQuestion: _resetQuestion));
  }
}
