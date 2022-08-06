import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final String answerText;
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red[100]),
            foregroundColor: MaterialStateProperty.all(Colors.red),
          ),
          onPressed: selectHandler,
          child: Text(answerText,
              style: const TextStyle(fontWeight: FontWeight.bold))),
    );
  }
}
