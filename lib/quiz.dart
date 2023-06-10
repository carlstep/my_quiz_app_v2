import 'package:flutter/material.dart';
import 'package:my_quiz_app_v2/questions_screen.dart';
import 'package:my_quiz_app_v2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
  });

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
// RENDERING CONTENT CONDITIONALLY...
// use Widget type instead of var.  Widget type is more
// general, while var is more specific with dart type inference.
// StartScreen needs access to the switchScreen function in quiz.dart
  Widget? activeScreen;

// initState is a method. executes once, and before the build method
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

// method for switching screens
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.black,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
