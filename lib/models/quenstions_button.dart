import 'package:flutter/material.dart';

class QuestionsButton extends StatelessWidget {
  const QuestionsButton(this.text, this.btwPressed, {super.key});
  final String text;
  final void Function() btwPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        btwPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(241, 255, 255, 255),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }
}
