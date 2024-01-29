import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Blue', 'Green', 'Yellow'],
    },
    {
      'questionText': 'What do you do?',
      'answers': ['Eat', 'Sleep', 'Drink water', 'Run'],
    },
    {
      'questionText': 'Do you have chairs?',
      'answers': ['Yes', 'No', 'A lot', 'I don\'t know'],
    },
    {
      'questionText': 'Would you like some red wine?',
      'answers': [
        'Yes',
        'No',
        'I don\'t drink alcohol',
        'No, I would like soda'
      ],
    },
  ];

  void _answerQuiz() {
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
                  answerQuiz: _answerQuiz,
                )
              : const Center(child: Text('Finish'))),
    );
  }
}
