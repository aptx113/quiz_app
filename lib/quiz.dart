import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    Key? key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  }) : super(key: key);
  final List questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answer'] as List<String>)
            .map((answer) => Answer(
                  selectHandler: answerQuestion,
                  answerText: answer,
                ))
            .toList()
      ],
    );
  }
}
