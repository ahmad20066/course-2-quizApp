import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String text;
  QuestionWidget({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ));
  }
}
