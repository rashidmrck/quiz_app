import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionNumber;

  const Question({Key key, this.questionNumber}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionNumber,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
