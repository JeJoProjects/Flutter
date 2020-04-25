import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>
{
  // variables
  var questionIndex = 0;

  // functions
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
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
