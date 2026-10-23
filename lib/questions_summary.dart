import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
      child: Column(
        children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                  color:  data['user_answer'] == data['correct_answer']
                        ? Colors.green
                        : Colors.red, // لون الخلفية
                  borderRadius: BorderRadius.circular(20), // زوايا دائرية
                    ),
                  child: Text(((data['question_index'] as int) + 1).toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Question: ${data['question']}',style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),),
                      Text('Correct Answer: ${data['correct_answer']}',style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 188, 255, 184),
                      ),),
                      Text('Your Answer: ${data['user_answer']}',style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(167, 255, 255, 255),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            );
          }).toList(),
      ),
    ),
    );
  }
}