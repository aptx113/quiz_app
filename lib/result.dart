import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.totolScore,
    required this.resetHandler,
  }) : super(key: key);

  final int totolScore;
  final VoidCallback resetHandler;
  String get resultPhrase {
    String resultText;
    if (totolScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (totolScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (totolScore <= 16) {
      resultText = 'You are special';
    } else {
      resultText = 'Bad guy';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(onPressed: resetHandler, child: Text('Restart Quiz'))
      ],
    );
  }
}
