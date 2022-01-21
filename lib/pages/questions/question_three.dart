import 'package:flutter/material.dart';
import 'package:popquiz/components/ask_button.dart';
import 'package:popquiz/widget/question_top.dart';

class QuestionThree extends StatelessWidget {
  const QuestionThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          QuestionTop(text: 'Qual desses paises você gostaria de morar?'),
          Column(
            children: [
              AskButton(
                text: 'Suiça',
                letter: 'A',
                route: '/questionFour',
              ),
              AskButton(
                text: 'Argentina',
                letter: 'B',
                route: '/questionFour',
              ),
              AskButton(
                text: 'Paris',
                letter: 'C',
                route: '/questionFour',
              ),
              AskButton(
                text: 'Japão',
                letter: 'D',
                route: '/questionFour',
              ),
              AskButton(
                text: 'Estados Unidos',
                letter: 'E',
                route: '/questionFour',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
