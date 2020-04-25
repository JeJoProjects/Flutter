import 'package:flutter/material.dart';

// class for questions
class Question extends StatelessWidget {
  // member variables
  final String questionText;

  // constructors
  Question(this.questionText);

  // member functions
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
