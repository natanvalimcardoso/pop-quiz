import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var value = 0;

class StartPage extends StatefulWidget {
  StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  TextEditingController text = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
            padding: EdgeInsets.only(top: 60, bottom: 20),
            child: SizedBox(
              height: 70,
              width: 250,
              child: Form(
                key: _formKey,
                child: TextFormField(
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Digite um nome';
                    }
                    return null;
                  },
                  controller: text,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Digite um nome',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                setState(() {
                  Navigator.pushNamed(context, '/questionOne',
                      arguments: text.text);
                });
              }
            },
            child: Text('Começar'),
          )
        ],
      ),
    );
  }
}
