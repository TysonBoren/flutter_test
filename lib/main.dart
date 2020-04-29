import 'package:flutter/material.dart';

import './question.dart';

// //main function is ran when the app launches
// void main() {
//   //runApp is provided by material.dart package.
//   runApp(MyApp());
// }

//for a function with one expression the below syntax is possible.
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test App'),
        ),
        body: Column(
          children: [
            //can use .elementAt or use [] to target by index.
            // Text(questions.elementAt(0)),
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {
                //additional code this is for the example of making this an object to have a larger function body
                print('Answer 3 chosen'),
              },
            ),
          ],
        ),
      ),
    );
  }
}
