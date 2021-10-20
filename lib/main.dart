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
//TODO: Add an image view
//TODO: Add a random country to select
//TODO: Add Three random image
//TODO: Change the quiz when answered
//TODO: Add FlutterToast to indicate when choose a correct answer
//TODO: Add the button to move to the second screen
//TODO: Pass the data to the result screen

