import 'package:flutter/material.dart';
import 'package:second_app/styled_text.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final bool isCorrect =
                data['user_answer'] == data['correct_answer'];
            return Row(
              children: [
                StyledText(
                  text: ((data['question_index'] as int) + 1).toString(),
                  size: 15,
                  textalign: TextAlign.start,
                  fontweight: FontWeight.bold,
                  color: Colors.black,
                  backgroundcolor: isCorrect
                      ? Colors.lightBlue
                      : Colors.redAccent,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StyledText(
                        text: data['question'] as String,
                        size: 14,
                        fontweight: FontWeight.bold,
                        color: Colors.white,
                        textalign: TextAlign.left,
                      ),
                      SizedBox(height: 1),
                      StyledText(
                        text: data['user_answer'] as String,
                        size: 13,
                        fontweight: FontWeight.normal,
                        color: const Color.fromARGB(255, 255, 174, 0),
                        textalign: TextAlign.left,
                      ),
                      SizedBox(height: 0.5),
                      StyledText(
                        text: data['correct_answer'] as String,
                        size: 13,
                        fontweight: FontWeight.normal,
                        color: const Color.fromARGB(255, 66, 16, 230),
                        textalign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
