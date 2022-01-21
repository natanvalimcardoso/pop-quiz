import 'package:flutter/material.dart';
import 'package:popquiz/components/ask_button.dart';
import 'package:popquiz/widget/question_top.dart';

class QuestionOne extends StatelessWidget {
  const QuestionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          QuestionTop(text: 'Qual desses personagens você mais gosta?'),
          AskButton(
            text: 'Superman',
            letter: 'A',
          ),
          AskButton(
            text: 'Batman',
            letter: 'B',
          ),
          AskButton(
            text: 'James Bond',
            letter: 'C',
          ),
          AskButton(
            text: 'Indiana Jones',
            letter: 'D',
          ),
          AskButton(
            text: 'Flash',
            letter: 'E',
          ),
        ],
      ),
    );
  }
}
