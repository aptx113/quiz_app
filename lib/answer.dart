import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({
    Key? key,
    required this.selectHandler,
  }) : super(key: key);
  final VoidCallback selectHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Answer1'),
        onPressed: selectHandler,
      ),
    );
  }
}
