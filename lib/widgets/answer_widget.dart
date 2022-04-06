import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String text;
  final onTap;
  AnswerWidget({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
