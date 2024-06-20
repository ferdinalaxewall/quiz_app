import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/components/result_number.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResultNumber(
                    number: ((item['question_index'] as int) + 1).toString(),
                    isCorrect: item['is_correct'] as bool,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['question'] as String,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          item['user_answer'] as String,
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: item['is_correct'] as bool
                                  ? Colors.green[300]
                                  : Colors.red[300],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        if (!(item['is_correct'] as bool)) Text(
                            item['correct_answer'] as String,
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                color: Colors.green[300],
                              ),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
