import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultNumber extends StatelessWidget {
  const ResultNumber(
      {super.key, required this.number, required this.isCorrect});
  final String number;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrect ? Colors.green[300] : const Color.fromARGB(255, 228, 111, 249),
      ),
      child: Center(
        child: Text(
          number,
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(
                fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
