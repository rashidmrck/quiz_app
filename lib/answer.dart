import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionHandler;
  final String answer;
  const Answer({
    Key key,
    this.questionHandler,
    this.answer,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        onPressed: questionHandler,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer),
      ),
    );
  }
}
