import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);
  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore > 28) {
      resultText = 'You are ossum and innocent';
    } else if (resultScore > 25 && resultScore < 28) {
      resultText = 'Pretty likeable!!';
    } else {
      resultText = 'you are strange ..... ???';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text('Restart Quiz'),
          color: Colors.blue,
        ),
      ],
    );
  }
}
