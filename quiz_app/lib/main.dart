import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;
  void _answerQuestions() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'what\'s your favorite color? ',
        'answers': ['black', 'white', 'blue'],
      },
      {
        'questionText': 'what\'s you favorite animal? ',
        'answers': ['rabbit', 'rat', 'dog'],
      }
    ];

    return MaterialApp(
      title: 'QuizApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
