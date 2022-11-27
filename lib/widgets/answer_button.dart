import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String content;
  final VoidCallback click;
  const AnswerButton({required this.content, required this.click, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        key: key,
        // padding: const EdgeInsets.all(10),
        width: double.maxFinite,
        child: ElevatedButton(
          onPressed: click,
          child: Text(content),
        ));
  }
}
