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
          Ink(
            child: AskButton(
              text: 'Superman',
              letter: 'A',
              route: '/questionTwo',
            ),
          ),
          AskButton(
            text: 'Batman',
            letter: 'B',
            route: '/questionTwo',
          ),
          AskButton(
            text: 'James Bond',
            letter: 'C',
            route: '/questionTwo',
          ),
          AskButton(
            text: 'Indiana Jones',
            letter: 'D',
            route: '/questionTwo,',
          ),
          AskButton(
            text: 'Flash',
            letter: 'E',
            route: '/questionTwo',
          ),
        ],
      ),
    );
  }
}
