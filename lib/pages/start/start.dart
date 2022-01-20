import 'package:flutter/material.dart';
import 'package:popquiz/components/action_button.dart';

class Entrada extends StatelessWidget {
  Entrada({Key? key}) : super(key: key);

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
          ButtonEntrada(
            text: 'Responder',
            onPressed: () {
              Navigator.pushNamed(context, '/pergunta');
            },
          ),
        ],
      ),
    );
  }
}

/* Action Button  */
class ButtonEntrada extends StatelessWidget {
  final String? text;
  final Function()? onPressed;

  ButtonEntrada({
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        child: Text(
          text.toString(),
          style: TextStyle(color: Colors.white),
        ),
        onPressed: onPressed,
      );
}
/* AssetImage('assets/images/iniciarBaixo.svg'), */
