import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key, required this.answer_text, required this.onTap});
  final String answer_text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10,),
            backgroundColor: const Color.fromARGB(
              255,
              29,
              172,
              190,
            ),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(answer_text,textAlign: TextAlign.center,));
  }
}
