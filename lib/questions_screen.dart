import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/models/quenstions_button.dart';
import './data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAsnwer, {super.key});
  final void Function(String answer) onSelectAsnwer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answserQuestion(String answer) {
    setState(() {
      widget.onSelectAsnwer(answer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionNumber = questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questionNumber.text,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...questionNumber.suffeldList().map((e) {
              return QuestionsButton(e, () {
                answserQuestion(e);
              });
            })
          ],
        ),
      ),
    );
  }
}
