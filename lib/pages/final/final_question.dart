import 'package:flutter/material.dart';
import 'package:popquiz/components/action_button.dart';

var resultText = "Casual";
var imagem = 'violao';

class FinalQuestion extends StatelessWidget {
  const FinalQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.55,
              child: Image.asset('assets/images/$imagem.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.width * 0.2,
                top: MediaQuery.of(context).size.width * 0.050)
                ,
            child: Text(
              'Incrivel! Você é $resultText',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.21,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  text: 'Fazer novamente', route: '/startPage',
                ),
                ActionButton(
                  text: 'Histórico', route: '/historic',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/* 
               */