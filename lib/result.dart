import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  late final int resultScore;
  final Function() resetButton;
  Result(this.resultScore, this.resetButton);

  String get ResultPhrase {
    var resultText;
    if (resultScore <= 15) {
      resultText = 'You\'re awesome and innocent';
    } else if (resultScore <= 35) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 50) {
      resultText = 'Your are... strange!';
    } else {
      resultText = 'You are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 15,
        ),
        Text(
          ResultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        FlatButton(
            textColor: Colors.blue,
            onPressed: resetButton,
            child: Text(
              'Reset QUIZ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ))
      ],
    ));
  }
}
