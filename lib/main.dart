import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int questionIndex = 0;

  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?',
    ];
    return MaterialApp(
      // title: 'Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          // backgroundColor: new Color(),
        ),
        body: Column(
          children: <Widget>[
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () {
                answerQuestion();
              },
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => answerQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion(),
            ),
          ],
        ),
      ),
    );
  }
}
