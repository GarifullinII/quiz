import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void answerQuiz() {
    print('Your answer!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuiZ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Column(
          children: [
            const Text('Question'),
            ElevatedButton(
              onPressed: answerQuiz,
              child: const Text('Answer one'),
            ),
            ElevatedButton(
              onPressed: answerQuiz,
              child: const Text('Answer two'),
            ),
            ElevatedButton(
              onPressed: answerQuiz,
              child: const Text('Answer three'),
            ),
          ],
        ),
      ),
    );
  }
}
