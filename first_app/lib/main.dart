import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer printed');
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
            Text('The question!'),
            RaisedButton(
              child: Text('Answer - 1'),
              onPressed: answerQuestion,
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
