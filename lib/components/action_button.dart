import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String? label;
  final Function()? onPressed;

  ActionButton({
    this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
      child: Text(
        label.toString(),
        style: TextStyle(
          color: Colors.grey
        ),
      ),
      onPressed: onPressed,
    );
}
