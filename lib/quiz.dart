import 'dart:ffi';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int answersIndex;
  final Function answers;

  Quiz({
    required this.questions, required this.answersIndex, required this.answers
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[answersIndex]['questionText'] as String,),
        ...(questions[answersIndex]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answers(answer["score"]), answer["text"] as String);
        }).toList()
      ],
    );
  }
}
