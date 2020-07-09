import 'package:flutter/material.dart';
import 'package:new_course/quiz.dart';
import 'package:new_course/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _questions = [
    {
      'Question': "What's your favorite color?",
      'Answer': [
        {'text': 'green', 'score': 2},
        {'text': 'blue', 'score': 7},
        {'text': 'yello', 'score': 15},
        {'text': 'dark', 'score': 4},
      ],
    },
    {
      'Question': "What's your favorite city?",
      'Answer': [
        {'text': 'malappuram', 'score': 10},
        {'text': 'kozikode', 'score': 12},
        {'text': 'trivandram', 'score': 8},
        {'text': 'kochi', 'score': 5},
      ],
    },
    {
      'Question': "What's your favorite animal?",
      'Answer': [
        {'text': 'lion', 'score': 10},
        {'text': 'cat', 'score': 10},
        {'text': 'dog', 'score': 10},
        {'text': 'elephent', 'score': 10},
      ],
    }
  ];

  var _qusionNumbber = 0;
  var _totalscore = 0;

  void _changeQuestionNumber(int score) {
    _totalscore = _totalscore + score;
    print(_totalscore);
    setState(() {
      if (_qusionNumbber < _questions.length) {
        _qusionNumbber = _qusionNumbber + 1;
      } else {
        print('question completed');
      }
    });
  }

  void _restartQuiz() {
    setState(() {
      _qusionNumbber = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('sada'),
        ),
        body: _qusionNumbber < _questions.length
            ? Quiz(
                questions: _questions,
                questionChange: _changeQuestionNumber,
                questionNumber: _qusionNumbber,
              )
            : Result(
                total: _totalscore,
                restart: _restartQuiz,
              ),
      ),
    );
  }
}
