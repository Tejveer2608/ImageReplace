import 'package:flutter/material.dart';
import './questioning.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void goBack() {
    setState(() {
      _questionIndex--;
      print(_questionIndex);
    });
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer1': ['black', 'white', 'orange'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answer1': ['dog', 'lion', 'tiger']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answer1'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
            RaisedButton(
                textColor: Colors.red,
                elevation: 5,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Text('<-'),
                onPressed: goBack),
          ],
        ),
      ),
    );
  }
}
