import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.StartQuiz,{super.key});
  final VoidCallback StartQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: Color.fromARGB(50, 241, 170, 165),
            width: 300,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Learn flutter in fun way !',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          const SizedBox( 
            height: 20,
          ),
          OutlinedButton.icon(
              onPressed: 
                StartQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(Icons.arrow_right_alt),
              label: Text('click here'),),
        ],
      ),
    );
  }
}
