import 'package:flutter/material.dart';
import 'package:popquiz/components/ask_button.dart';
import 'package:popquiz/widget/question_top.dart';

class QuestionFive extends StatelessWidget {
  const QuestionFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          QuestionTop(text: 'Qual animal de extimação você teria?'),
          Column(
            children: [
              AskButton(
                text: 'Cachorro',
                letter: 'A',
                route: '/finalQuestion',
              ),
              AskButton(
                text: 'Dragão',
                letter: 'B',
                route: '/finalQuestion',
              ),
              AskButton(
                text: 'Dinossauro',
                letter: 'C',
                route: '/finalQuestion',
              ),
              AskButton(
                text: 'Gato',
                letter: 'D',
                route: '/finalQuestion',
              ),
              AskButton(
                text: 'Vaca',
                letter: 'E',
                route: '/finalQuestion',
              ),
            ],
          ),
        ],
      ),
    );
  }
}