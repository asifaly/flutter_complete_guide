// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex,
      Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['question']),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => answerQuestion(answer['score']), answer['text'] as String);
      }).toList(),
    ]);
  }
}
