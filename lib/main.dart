import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    //below, stored in the variable 'questions' is the shorthand for Map, which is like a dict, Map holds key/value pairs! We have 3 maps with sublists stored in a list!
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Who is the best guy named Tyson?',
        'answers': ['Shag', 'James', 'Tyson', 'Tieson(what a dumb name)'],
      },
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
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
