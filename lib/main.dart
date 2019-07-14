import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['Dog', 'Cat', 'Mouse', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite place ?',
      'answers': [
        'Paris',
        'Rome',
        'Berlin',
        'London',
        'Copenhagen',
      ],
    },
  ];

  int _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
    } else {}
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // _questions = []; won't change if _questions is const

    return MaterialApp(
      // title: 'Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          // backgroundColor: new Color(),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
            : Result()
      ),
    );
  }
}
