import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatefulWidget {
  const FirstApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstAppState();
  }
}

class _FirstAppState extends State<FirstApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, dynamic>> _questions = [
    {
      "question": "What's your favorite color?",
      "answers": [
        {'text': "black", 'score': 10},
        {'text': "red", 'score': 5},
        {'text': "green", 'score': 3},
        {'text': "white", 'score': 1},
      ]
    },
    {
      "question": "What's your favorite animal?",
      "answers": [
        {'text': "cat", 'score': 10},
        {'text': "dog", 'score': 5},
        {'text': "lion", 'score': 3},
        {'text': "tiger", 'score': 1},
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  void _ResetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstApp',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlutterApp'),
          centerTitle: false,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(score: _totalScore, resetHandler: _ResetQuiz),
      ),
    );
  }
}
