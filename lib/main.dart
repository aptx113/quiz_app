import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answer': ['Angela', 'Jerome', 'Wayne', 'Max']
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else
      print('no more question!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < questions.length
              ? Column(
                  children: [
                    Question(
                        questionText: questions[_questionIndex]
                            ['questionText']),
                    ...(questions[_questionIndex]['answer'] as List<String>)
                        .map((answer) => Answer(
                              selectHandler: _answerQuestion,
                              answerText: answer,
                            ))
                        .toList()
                  ],
                )
              : Center(
                  child: Text('Well done!'),
                )),
    );
  }
}
