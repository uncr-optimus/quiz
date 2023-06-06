import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/results_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widget? activeScreen;

  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  List<String> selectedAnswers = [];

  var activeScreen = 'start-Screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        //selectedAnswers = [];
        activeScreen = 'results-Screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidgit =
        StartScreen(switchScreen); //at first screen widgit is initialised here

    if (activeScreen == 'question-Screen') {
      screenWidgit = QuestionScreen(onselectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-Screen') {
      screenWidgit = ResultsScreeen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(100, 37, 236, 1),
                Color.fromRGBO(17, 2, 185, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          //child: activeScreen,
          child: screenWidgit,
        ),
      ),
    );
  }
}
