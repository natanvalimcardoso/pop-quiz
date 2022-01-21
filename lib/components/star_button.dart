import 'package:flutter/material.dart';

class StarButton extends StatelessWidget {
  final String? text;
  final Function()? onPressed;

  StarButton({
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
