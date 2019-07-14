import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it !!!';
    if (totalScore <= 8) {
      resultText = 'You are innocent';
    } else if (totalScore <= 12) {
      resultText = 'Likable !!!';
    } else if (totalScore <= 16) {
      resultText = 'You are weird';
    } else {
      resultText = 'You are bad !!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          FlatButton(child: Text('Restart Quiz'), onPressed: resetQuiz,)
        ],
      ),
    );
  }
}
