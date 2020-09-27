import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quetions extends StatelessWidget {
  final String quetion;

  Quetions(this.quetion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        quetion,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
