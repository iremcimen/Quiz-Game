import 'package:flutter/material.dart';
import 'styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(200, 255, 255, 255),
        ),
        SizedBox(height: 80),
        StyledText(
          text: 'Learn Flutter the fun way!',
          size: 24,
          fontweight: FontWeight.normal,
          color: Color.fromARGB(255, 0, 255, 98),
        ),
        SizedBox(height: 50),
        OutlinedButton.icon(
          icon: Icon(
            Icons.play_arrow_rounded,
            color: const Color.fromARGB(255, 255, 255, 255),
            size: 28,
            blendMode: BlendMode.exclusion,
          ),
          onPressed: () {
            startQuiz();
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 72, 0, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(20.5)),
              side: BorderSide(color: const Color.fromARGB(255, 0, 29, 249)),
            ),
          ),
          label: StyledText(
            text: 'Start Quizz',
            size: 18,
            fontweight: FontWeight.w500,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ],
    );
  }
}
