import 'package:flutter/material.dart';
import 'package:popquiz/components/ask_button.dart';
import 'package:popquiz/widget/question_top.dart';

class QuestionTwo extends StatelessWidget {
  const QuestionTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          QuestionTop(text: 'Qual desses filmes você mais gosta?'),
          Column(
            children: [
              AskButton(
                text: 'Interestelar',
                letter: 'A',
                route: '/questionThree',
              ),
              AskButton(
                text: 'Vingadores',
                letter: 'B',
                route: '/questionThree',
              ),
              AskButton(
                text: 'Senhor dos aneis',
                letter: 'C',
                route: '/questionThree',
              ),
              AskButton(
                text: 'Se beber, não case!',
                letter: 'D',
                route: '/questionThree',
              ),
              AskButton(
                text: 'Romeu e Julieta',
                letter: 'E',
                route: '/questionThree',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
