import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function(int) answerQuestion;

  const Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText'] as String),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
              answer['text'] as String,
                () {
                  answerQuestion(answer['score'] as int);
                },
            );
          }).toList(),
        ],
      ),
    );
  }
}
