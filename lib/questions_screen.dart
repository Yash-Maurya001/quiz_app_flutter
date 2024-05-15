import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/models/quenstions_button.dart';
import './data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionNumber = 0;
  List<Widget>? list;
  @override
  void initState() {
    listFun();
    super.initState();
  }

  void listFun() {
    list = [
      Text(
        questions[questionNumber].text,
        style: const TextStyle(color: Colors.white, fontSize: 20),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 30,
      ),
      QuestionsButton(questions[questionNumber].answers[0], incrementSatet),
      QuestionsButton(questions[questionNumber].answers[1], incrementSatet),
      QuestionsButton(questions[questionNumber].answers[2], incrementSatet),
      QuestionsButton(questions[questionNumber].answers[3], incrementSatet)
    ];
  }

  void incrementSatet() {
    setState(() {
      if (questionNumber != questions.length - 1) {
        questionNumber++;
        log(questionNumber);
        listFun();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...(list?.isNotEmpty ?? false ? list! : [const Text("")])
        ],
      ),
    );
  }
}
