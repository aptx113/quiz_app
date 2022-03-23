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
  final void Function(int) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                  selectHandler: () => answerQuestion(answer['score'] as int),
                  answerText: answer['text'] as String,
                ))
            .toList()
      ],
    );
  }
}
