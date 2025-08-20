import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/styled_text.dart';
import 'package:second_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
    required this.onClose,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;
  final void Function() onClose;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StyledText(
              text:
                  'You answerd $numCorrectQuestions out of $numTotalQuestions questions corretly!',
              size: 25,
              fontweight: FontWeight.w800,
              color: const Color.fromARGB(255, 255, 255, 255),
              textalign: TextAlign.left,
            ),
            SizedBox(height: 30),
            QuestionsSummary(summaryData),
            SizedBox(height: 40),
            OutlinedButton.icon(
              icon: Icon(
                Icons.refresh_outlined,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 24,
                blendMode: BlendMode.exclusion,
              ),
              onPressed: onRestart,
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(96, 195, 185, 185),
              ),
              label: StyledText(
                text: 'Restart Quiz!',
                size: 20,
                fontweight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 118, 186),
              ),
            ),
            SizedBox(height: 50),
            OutlinedButton(
              onPressed: onClose,
              child: StyledText(
                text: 'Close Quiz',
                size: 12,
                fontweight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
