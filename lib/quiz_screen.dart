
import 'package:flutter/material.dart';
import 'quiz_data.dart'; // Import the quiz data
import 'result_screen.dart'; // Import the ResultScreen class

class QuizScreen extends StatefulWidget {
  final List<Map<String, dynamic>> questions;

  QuizScreen(this.questions); // Constructor to pass quiz questions

  @override
  _QuizScreenState createState() => _QuizScreenState(); // Create state for QuizScreen
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0; // Index of the current question
  int score = 0; // Score variable to keep track of correct answers

  // Method to check the selected answer
  void checkAnswer(String selectedAnswer) {
    // Check if the selected answer is correct
    if (selectedAnswer == widget.questions[currentQuestionIndex]['correctAnswer']) {
      setState(() {
        score++; // Increment the score for a correct answer
      });
    }
    goToNextQuestion(); // Proceed to the next question
  }

  // Method to navigate to the next question or the result screen
  void goToNextQuestion() {
    if (currentQuestionIndex < widget.questions.length - 1) {
      setState(() {
        currentQuestionIndex++; // Move to the next question
      });
    } else {
      // Navigate to the result screen when all questions are answered
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(score, widget.questions.length),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'), // Set the app bar title
        centerTitle: true, // Center-align the title
        backgroundColor: Colors.blueGrey, // Background color of the app bar
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0), // Add top margin to question number
            child: Text(
              'Question ${currentQuestionIndex + 1}', // Display the question number
              style: TextStyle(fontSize: 20),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0), // Add margin to question text
            child: Text(
              widget.questions[currentQuestionIndex]['question'], // Display the current question
              style: TextStyle(fontSize: 20),
            ),
          ),

          for (String option in widget.questions[currentQuestionIndex]['options'])
            FractionallySizedBox(
              widthFactor: 0.8, // Set button width to 80% of the screen width
              child: ElevatedButton(
                onPressed: () {
                  checkAnswer(option); // Check the selected answer
                },
                child: Text(option), // Display answer option
              ),
            ),
        ],
      ),
    );
  }
}
