import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;

  const Answer(this.answerText, this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.cyan),
        foregroundColor: MaterialStatePropertyAll(Colors.blueAccent),
      ),
      onPressed: selectHandler,
      child: Text(answerText),
    );
  }
}
