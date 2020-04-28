import 'package:flutter/material.dart';

// //main function is ran when the app launches
// void main() {
//   //runApp is provided by material.dart package.
//   runApp(MyApp());
// }

//for a function with one expression the below syntax is possible.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //override is a 'decorator'. when you override a statless widget, its best practise to use @override for clarity.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test App'),
        ), //AppBar
        body: Text('default text'),
      ), //Scaffold
    ); //MaterialApp
  }
}
