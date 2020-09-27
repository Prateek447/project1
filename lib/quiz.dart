//import 'dart:core' as prefix0;

import 'package:flutter/material.dart';
import './quetions.dart';
import './answer.dart';

class Quiz extends StatelessWidget{

  final List<Map<String,Object>>  list;

  final int index;

  final Function ans;


  Quiz({ @required this.list, @required this.index, @required this.ans});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Quetions(list[index]['quetionText']),
        ...(list[index]['answerText'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => ans(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}