import 'package:flutter/material.dart';
import 'package:popquiz/components/action_button.dart';
import 'package:popquiz/components/star_button.dart';

class StartPage extends StatelessWidget {
  StartPage({Key? key}) : super(key: key);

  TextEditingController valorController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 250,
              width: 250,
              child: Image.asset('assets/images/pergunta.png'),
            ),
          ),
          Text(
            'Popquiz',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 20),
            child: SizedBox(
              height: 50,
              width: 250,
              child: TextField(
                controller: valorController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Digite um apelido',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          StarButton(
            text: 'Responder',
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/pergunta');
            },
          ),
        ],
      ),
    );
  }
}
