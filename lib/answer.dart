import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() press;
  final String answer;
  Answer(this.press, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          answer,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: press,
      ),
    );
  }
}
