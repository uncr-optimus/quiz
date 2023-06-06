import 'package:flutter/material.dart';
import 'package:quiz/questions_summary/summary_item.dart';
import 'package:quiz/results_screen.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    // print("this is summary data");
    // print(summaryData);
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {          // since the return item i also list so we not add [] bracket after children since it also signify the list
            return SummaryItem(itemData : data);
          },).toList(),
        ),
      ),
    );
  }
}
