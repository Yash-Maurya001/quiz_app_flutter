import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';

class FinalResultScreen extends StatelessWidget {
  const FinalResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("You Answersed X of Y questions correctly",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                textAlign: TextAlign.center),
            SizedBox(
              height: 30,
            ),
            Text("list of aswers and Question "),
            TextButton(onPressed: null, child: Text("Try Again"))
          ],
        ),
      ),
    );
  }
}
