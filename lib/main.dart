// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './text.dart';
import './textControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _text = const [
    'Hello world!',
    'Bye bye',
    'Goodbye',
    'Hello',
    'First assignment'
  ];

  void _changeText() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Assigment 1')),
        body: _questionIndex < _text.length
            ? Center(
                child: Column(
                  children: <Widget>[
                    ShowText(_text[_questionIndex]),
                    TextControl(_changeText),
                  ],
                ),
              )
            : Text('Game over',
                style: TextStyle(fontSize: 26), 
                textAlign: TextAlign.center
              ),
      ),
    );
  }
}
