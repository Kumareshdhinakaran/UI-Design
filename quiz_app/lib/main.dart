import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite color? ',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'white', 'score': 9},
        {'text': 'blue', 'score': 8},
      ],
    },
    {
      'questionText': 'what\'s you favorite animal? ',
      'answers': [
        {'text': 'rat', 'score': 10},
        {'text': 'rabbit', 'score': 9},
        {'text': 'dog', 'score': 8},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestions: _answerQuestions,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
