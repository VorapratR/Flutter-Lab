import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  // ส่วนของ state
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  void questionNext() {
    setState(() {
      if(_questionIndex < 1) {
        _questionIndex += 1;
      } else 
       _questionIndex = 0;
      
    });
    print('Index: $_questionIndex');
  }
  // ส่วนงานแสดงผลทั้งหมด 
  @override
  Widget build(BuildContext context) {
    var questions = [
      'Who is best Batman?',
      'Who is bad Batman?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text('Robert Pattinson'),
              onPressed: () => print('Robert Pattinson')
            ),
            RaisedButton(
              child: Text('Michael Keaton'),
              onPressed: questionNext,
            ),
            RaisedButton(
              child: Text('George Clooney'),
              onPressed: () => print('George Clooney')
            )
          ]
        ),
      ),
    );
  }
}
