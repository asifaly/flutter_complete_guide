import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;
  const Result({required this.score, required this.resetHandler, Key? key})
      : super(key: key);

  String get resultPhrase {
    return 'You did it, your score is $score';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetHandler,
              child: const Text(
                'Restart Quiz',
              )),
        ],
      ),
    );
  }
}
