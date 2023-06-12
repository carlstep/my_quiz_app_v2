import 'package:flutter/material.dart';
import 'package:my_quiz_app_v2/answer_button.dart';
import 'package:my_quiz_app_v2/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.questionText,
              style: const TextStyle(
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            // the three dots ... is a spread operator
            // provides the answers using map, for each answer return the AnswerButton
            ...currentQuestion.answers.map((answer) {
              return AnswerButton(
                answerText: answer,
                onTapAnswer: () {},
              );
            }),
          ],
        ),
      ),
    );
  }
}
