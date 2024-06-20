import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz, {
    super.key,
  });

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text('Learn Flutter the fun way!',
              style: GoogleFonts.raleway(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255, 236, 236, 236),
                  fontSize: 24,
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(255, 236, 236, 0.7),
              foregroundColor: const Color.fromARGB(255, 86, 47, 154),
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 30, right: 30),
            ),
            label: Text('Start Quiz',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                )),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
