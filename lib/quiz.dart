import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuiz;

  const Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuiz,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText'] as String),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(answer, answerQuiz);
          }).toList(),
        ],
      ),
    );
  }
}
