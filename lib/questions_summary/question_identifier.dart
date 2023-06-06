import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget{

const QuestionIdentifier({super.key,required this.isCorrectAnswer,required this.questionIndex});

final bool isCorrectAnswer;
final int questionIndex;

  @override
  Widget build(Object context) {
    final questionNumber = questionIndex +1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer ?
        Color.fromARGB(255, 133, 244, 139) :
        Color.fromARGB(255, 238, 49, 162),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(questionNumber.toString(),
      style: const TextStyle(
        color: Color.fromARGB(255, 20, 15, 15),
        fontWeight: FontWeight.bold,
      ),),
    );
  }

}