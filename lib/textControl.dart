import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText;

  TextControl(this.changeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Change text!', style: TextStyle(fontSize: 26)),
        onPressed: changeText,
    ));
  }
}
