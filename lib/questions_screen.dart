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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.questionText,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: currentQuestion.answers[0],
            onTapAnswer: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[1],
            onTapAnswer: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[2],
            onTapAnswer: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[3],
            onTapAnswer: () {},
          ),
        ],
      ),
    );
  }
}
