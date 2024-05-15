import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const Color backgroundColor = Color.fromARGB(255, 45, 165, 234);
  const HomeScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 3000,
            color: const Color.fromARGB(161, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Learn Flutter Fun Way!",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_outlined),
            onPressed: () {
              startQuiz();
            },
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 254, 254, 254),
              ),
            ),
          )
        ],
      ),
    );
  }
}
