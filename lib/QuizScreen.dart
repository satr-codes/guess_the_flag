import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:guess_the_flag/ResultScreen.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen();

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> countries = [
    "Estonia",
    "France",
    "Germany",
    "Ireland",
    "Italy",
    "Monaco",
    "Nigeria",
    "Poland",
    "Russia",
    "Spain",
    "UK",
    "US",
  ];

  int num = Random().nextInt(3);

  int correctAnswers = 0;
  int wrongAnswers = 0;

  @override
  void initState() {
    super.initState();

    countries.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 16),
              Text(
                "Guess The Flag?",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              Text(
                countries[num],
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30),
              for (int i = 0; i < 3; i++)
                FlagButton(
                  name: countries[i],
                  onPressed: () {
                    if (num == i) {
                      Fluttertoast.showToast(
                          msg: "Correct Answer", backgroundColor: Colors.green);
                      correctAnswers++;
                    } else {
                      Fluttertoast.showToast(
                          msg: "Wrong Answer", backgroundColor: Colors.red);
                      wrongAnswers++;
                    }

                    setState(() {
                      countries.shuffle();
                      num = Random().nextInt(3);
                    });
                  },
                ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          correctAnswers: correctAnswers,
                          wrongAnswers: wrongAnswers,
                        ),
                      ),
                    );
                  },
                  child: Text("Result"))
            ],
          ),
        ),
      ),
    );
  }
}

class FlagButton extends StatelessWidget {
  const FlagButton({Key? key, required this.name, required this.onPressed})
      : super(key: key);

  final String name;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Image.asset(
        "assets/countries/$name.png",
        height: 150,
      ),
    );
  }
}
