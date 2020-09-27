import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.amberAccent,
      child: RaisedButton(
        color: Colors.cyan,
        onPressed: selectHandler,
        child: Text(answerText),
        textColor: Colors.white,

      ),
    );
  }
}
