import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({
    required this.question,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: double.infinity,
      color: Colors.amber,
      padding: const EdgeInsets.all(70),
      margin: const EdgeInsets.only(top: 40),
      child: Text(
        question,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrangeAccent,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
