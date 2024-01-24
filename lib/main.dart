import 'package:flutter/material.dart';
import 'package:quiz/question.dart';

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

  void _answerQuiz() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What do you do?',
      'Do you have chairs?',
      'Would you like some red wine?',
    ];
    return MaterialApp(
      title: 'QuiZ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Center(
          child: Column(
            children: [
              Question(questions[_questionIndex]),
              ElevatedButton(
                onPressed: _answerQuiz,
                child: const Text('Answer one'),
              ),
              ElevatedButton(
                onPressed: _answerQuiz,
                child: const Text('Answer two'),
              ),
              ElevatedButton(
                onPressed: _answerQuiz,
                child: const Text('Answer three'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
