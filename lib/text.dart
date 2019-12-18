import 'package:flutter/material.dart';

class ShowText extends StatelessWidget {
  final String text;

  ShowText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}