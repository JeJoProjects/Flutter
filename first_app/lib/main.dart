import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// private to only this dart file
class _MyAppState extends State<MyApp> {
  // variables
  var _questionIndex = 0;

  // functions
  void _answerQuestion() {
    setState(() {
      ++_questionIndex;
    });
    print(_questionIndex);
    //print('Answer printed');
  }

  @override // declarator
  Widget build(BuildContext buildContext) {
    var questions = [
      'What\'s your favourate color ?',
      'What\'s your favourate animal ?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer - 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer - 2'),
              onPressed: () => print('Answer 2 has been choosen'),
            ),
            RaisedButton(
              child: Text('Answer - 3'),
              onPressed: () {
                // some other codes....
                print('Answer 3 has been choosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
