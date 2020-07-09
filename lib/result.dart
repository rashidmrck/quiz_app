import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function restart;

  const Result({
    Key key,
    this.total,
    this.restart,
  }) : super(key: key);

  String get resultText {
    var resultText = 'You did it';
    if (total <= 8) {
      resultText = 'poda pulle';
    } else if (total <= 12) {
      resultText = 'poda tendi';
    } else {
      resultText = 'Fuck You';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            '$resultText',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        FlatButton(
          textColor: Colors.blue,
          onPressed: restart,
          child: Text('Restart Quiz'),
        ),
      ],
    );
  }
}
