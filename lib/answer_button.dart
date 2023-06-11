// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answerText,
    required this.onTapAnswer,
    Key? key,
  }) : super(key: key);

  final String answerText;
  final void Function() onTapAnswer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTapAnswer,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: const Color.fromARGB(159, 2, 43, 76),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(answerText),
    );
  }
}
