import 'package:flutter/material.dart';
import 'package:second_app/styled_text.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap, {super.key});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        backgroundColor: const Color.fromARGB(255, 255, 239, 192),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        side: BorderSide(color: Colors.deepOrange),
      ),
      child: StyledText(
        text: answerText,
        size: 10,
        fontweight: FontWeight.w800,
        textalign: TextAlign.left,
        color: const Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}
