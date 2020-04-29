import 'package:flutter/material.dart';

// //main function is ran when the app launches
// void main() {
//   //runApp is provided by material.dart package.
//   runApp(MyApp());
// }

//for a function with one expression the below syntax is possible.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }

  //override is a 'decorator'. when you override a statless widget, its best practise to use @override for clarity.
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
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //additional code this is for the example of making this an object to have a larger function body
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
