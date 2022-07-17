import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Black', 'score': 5},
        {'text': 'Yellow', 'score': 3},
        {'text': 'Green', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 11},
        {'text': 'Cheetah', 'score': 8},
        {'text': 'Leopard', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answer': [
        {'text': 'Rice', 'score': 2},
        {'text': 'Bean', 'score': 2},
        {'text': 'Jallof Rice', 'score': 2},
        {'text': 'Indomie', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite cloth?',
      'answer': [
        {'text': 'Ankara', 'score': 4},
        {'text': 'Senator', 'score': 5},
        {'text': 'Pollo', 'score': 6},
        {'text': 'Suit', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favorite place?',
      'answer': [
        {'text': 'Anambra', 'score': 2},
        {'text': 'Enugu', 'score': 6},
        {'text': 'Lagos', 'score': 9},
        {'text': 'Akwa Ibom', 'score': 7}
      ]
    },
    {
      'questionText': 'What\'s your favorite eatery?',
      'answer': [
        {'text': 'Ofia Oku', 'score': 5},
        {'text': 'Mr Biggs', 'score': 8},
        {'text': 'Bottom Pot', 'score': 10},
        {'text': 'Mummy\'s Pot', 'score': 5}
      ]
    }
  ];
  void getQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });

    // if (questionIndex > questions.length - 1) {
    //   questionIndex = 0;
    // }
  }

  void resetButton() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Quiz App'),
          ),
          body: questionIndex < questions.length
              ? Quiz(
                  getQuestion: getQuestion,
                  questionIndex: questionIndex,
                  questions: questions,
                )
              : Result(totalScore, resetButton),
        ));
  }
}
