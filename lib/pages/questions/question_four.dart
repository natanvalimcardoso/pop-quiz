import 'package:flutter/material.dart';
import 'package:popquiz/components/ask_button.dart';
import 'package:popquiz/widget/question_top.dart';

class QuestionFour extends StatelessWidget {
  const QuestionFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          QuestionTop(text: 'Qual é a sua comida favorita?'),
          Column(
            children: [
              AskButton(
                text: 'Estrogonofe',
                letter: 'A',
                route: '/questionFive',
              ),
              AskButton(
                text: 'Lasanha',
                letter: 'B',
                route: '/questionFive',
              ),
              AskButton(
                text: 'Chocolate',
                letter: 'C',
                route: '/questionFive',
              ),
              AskButton(
                text: 'Yakisoba',
                letter: 'D',
                route: '/questionFive',
              ),
              AskButton(
                text: 'Omelete',
                letter: 'E',
                route: '/questionFive',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
