import 'package:flutter/material.dart';
import 'package:popquiz/components/action_button.dart';
import 'package:popquiz/components/result.dart';

class PersonalHistory extends StatelessWidget {
  const PersonalHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SafeArea(
            child: Text(
              'Respostas',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Result(
                text: 'Cachorro',
                letter: 'A',
              ),
              Result(
                text: 'Cachorro',
                letter: 'D',
              ),
              Result(
                text: 'Cachorro',
                letter: 'A',
              ),
              Result(
                text: 'Cachorro',
                letter: 'C',
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(text: 'Histórico', route: '/historic'),
                ActionButton(text: 'Novo questionário', route: '/startPage'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
