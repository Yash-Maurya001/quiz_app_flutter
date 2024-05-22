import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/final_result_screen.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = HomeScreen(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    log(answer);
    if (questions.length == selectedAnswers.length) {
      setState(() {
        activeScreen = FinalResultScreen();
        selectedAnswers = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 64, 185, 255),
                Color.fromARGB(255, 3, 130, 204),
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
