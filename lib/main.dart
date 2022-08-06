import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';
// import 'package:flutter/cupertino.dart';

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
  int _currentQuestion = 0;

  void _answerQuestion() {
    setState(() {
      _currentQuestion += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return MaterialApp(
      title: 'FirstApp',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlutterApp'),
          centerTitle: false,
        ),
        body: Column(children: [
          Question(questions[_currentQuestion]['question'] as String),
          ...(questions[_currentQuestion]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList(),
        ]),
      ),
    );
  }
}
