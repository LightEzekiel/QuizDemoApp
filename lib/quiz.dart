import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function getQuestion;

  Quiz(
      {required this.questions,
      required this.getQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questionText'] as String),
      ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => getQuestion(answer['score']), answer['text'] as String);
      }).toList()
    ]);
  }
}
