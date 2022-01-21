import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key, required this.text, required this.route}) : super(key: key);
  final String text;
  final String route;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {
          Navigator.pushReplacementNamed(context, route);
        },
        child: Ink(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.09,
          decoration: BoxDecoration(
            color: Color(0xFF434C59),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(text,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
