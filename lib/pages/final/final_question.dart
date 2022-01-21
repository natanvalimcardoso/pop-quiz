import 'package:flutter/material.dart';

class FinalQuestion extends StatelessWidget {
  const FinalQuestion({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Text('Final Question'),
        ),
      ),
    );
  }
}