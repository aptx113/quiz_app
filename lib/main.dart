import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final question = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: [
              Text(question[_questionIndex]),
              ElevatedButton(
                  child: Text('Answer 1'), onPressed: _answerQuestion),
              ElevatedButton(
                child: Text('Answer2'),
                onPressed: _answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer3'),
                onPressed: _answerQuestion,
              )
            ],
          )),
    );
  }
}
