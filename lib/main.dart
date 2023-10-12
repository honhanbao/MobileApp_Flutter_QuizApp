
import 'package:flutter/material.dart';
import 'quiz_data.dart'; // Import the quiz data
import 'quiz_screen.dart';
import 'result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/quiz', // Set '/quiz' as the initial route
      routes: {
        '/quiz':    (context) => QuizScreen(quizData),                // Named route for the QuizScreen
        '/result':  (context) => ResultScreen(0, quizData.length),    // Named route for the ResultScreen
      },
    );
  }
}
