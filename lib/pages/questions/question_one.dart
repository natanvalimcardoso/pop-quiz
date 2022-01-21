import 'package:flutter/material.dart';
import 'package:popquiz/widget/question_top.dart';

class QuestionOne extends StatelessWidget {
  const QuestionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          QuestionTop(text: 'Qual desses personagens você mais gosta?'),
          
        ],
      ),
    );
  }
}
