// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:my_quiz_app_v2/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
    this.itemData, {
    Key? key,
  }) : super(key: key);

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              isCorrectAnswer: isCorrectAnswer,
              questionIndex: itemData['question_index'] as int),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    itemData['question'] as String,
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: Colors.white70),
                  ),
                ),
                // const SizedBox(
                //   height: 5,
                // ),
                Text(
                  itemData['user_answer'] as String,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 212, 124, 154),
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
