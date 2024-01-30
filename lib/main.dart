import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 7},
        {'text': 'Green', 'score': 5},
        {'text': 'Yellow', 'score': 2},
      ],
    },
    {
      'questionText': 'What do you do?',
      'answers': [
        {'text': 'Eat', 'score': 9},
        {'text': 'Sleep', 'score': 10},
        {'text': 'Drink water', 'score': 4},
        {'text': 'Run', 'score': 3},
      ],
    },
    {
      'questionText': 'Do you have chairs?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 1},
        {'text': 'A lot', 'score': 3},
        {'text': 'I don\'t know', 'score': 7},
      ],
    },
    {
      'questionText': 'Would you like some red wine?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 9},
        {'text': 'I don\'t drink alcohol', 'score': 10},
        {'text': 'No, I would like soda', 'score': 7},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuiz(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuiZ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuiz,
              )
            : Result(_totalScore),
      ),
    );
  }
}
