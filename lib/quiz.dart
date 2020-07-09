import 'package:flutter/material.dart';
import 'package:new_course/answer.dart';

import 'package:new_course/question.dart';

class Quiz extends StatelessWidget {
  final Function questionChange;
  final List questions;
  final int questionNumber;
  const Quiz({
    Key key,
    this.questionChange,
    this.questions,
    this.questionNumber,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionNumber: questions[questionNumber]['Question'],
        ),
        ...questions[questionNumber]['Answer']
            .map((e) => Answer(
                  answer: e['text'],
                  questionHandler: () => questionChange(e['score']),
                ))
            .toList(),
      ],
    );
  }
}
