import 'package:flutter/material.dart';

class AskButton extends StatelessWidget {
  final String text;
  final String letter;

  const AskButton({Key? key, required this.text, required this.letter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.090,
        width: MediaQuery.of(context).size.width * 0.80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Color.fromRGBO(67, 76, 89, 1),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
              child: Container(
                child: Center(
                    child: Text(
                  letter,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025),
                )),
                width: MediaQuery.of(context).size.width * 0.10,
                height: MediaQuery.of(context).size.height * 0.10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromRGBO(67, 76, 89, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
