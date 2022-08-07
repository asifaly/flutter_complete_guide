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

  final List<Map<String, dynamic>> _questions = [
    {
      "question": "What's your favorite color?",
      "answers": ["black", "red", "green", "white"]
    },
    {
      "question": "What's your favorite animal?",
      "answers": ["cat", "dog", "tiger", "lion"]
    },
    {
      "question": "What's your favorite country?",
      "answers": ["india", "america", "china", "ghana"]
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
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
            : const Result(),
      ),
    );
  }
}
