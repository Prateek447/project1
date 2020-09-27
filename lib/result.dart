import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score,this.reset);

  String get getPhrase {
    String val;
    if (score > 25)
      val = "You are Devil !";
    else if (score >= 19)
      val = "you are Simple !";
    else if (score >15)
      val = "No words to say";
    else
      val = "You are Bot";
    return val;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            child: Text(
              "Restart Quiz",
              style: TextStyle(color: Colors.cyan),
            ),
          ),
        ],
      ),
    );
  }
}
