import 'package:flutter/material.dart';
import 'package:project_1/quiz.dart';
import './quetions.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  var _totalScore=0;


  void resetQuiz(){
    setState(() {
      _index=0;
      _totalScore=0;
    });
  }
  void _answerQuetion(int score) {

    _totalScore+=score;
    setState(() {
      _index = _index + 1;
    });
    //  print("Answer 1");
  }

  @override
  Widget build(BuildContext context) {
    var list = [
      {
        "quetionText": "Whats your favorite color?",
        "answerText": [
          {"text": "red", "score": 4},
          {"text": "black", "score": 2},
          {"text": "blue", "score": 8},
          {"text": "pink", "score": 2}
        ]
      },
      {
        "quetionText": "Whats your favorite animal?",
        "answerText": [
          {"text": "monkey", "score": 3},
          {"text": "tiger", "score": 6},
          {"text": "Panther", "score": 8},
          {"text": "Dog", "score": 9}
        ]
      },
      {
        "quetionText": "Who is your favorite SuperHero ?",
        "answerText": [
          {"text": "Thor", "score": 7},
          {"text": "Thanos", "score": 10},
          {"text": "RedScull", "score": 4},
          {"text": "Loki", "score": 9}
        ]
      },
      {
        "quetionText": "Who is your favorite PUBG player ?",
        "answerText": [
          {"text": "PSCHOJOKAR", "score": 7},
          {"text": "PSYCHOWOODY", "score": 8},
          {"text": "PSYCHOLOVER", "score": 3},
          {"text": "PSCHODADDY", "score": 1}
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first project"),
        ),
        body: _index < list.length
            ? Quiz(
                list: list,
                index: _index,
                ans: _answerQuetion,
              )
            : Result(_totalScore,resetQuiz),
      ),
    );
  }
}
