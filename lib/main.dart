import 'package:flutter/material.dart';
import 'package:guess_the_flag/QuizScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizScreen(),
    );
  }
}

//QuizScreen

//TODO: Pass the data to the result screen

//ResultScreen
//TODO: Update the Result Screen to accept passed Data
