
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  ResultScreen(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result', style: TextStyle(fontSize: 24),),
        centerTitle: true, // Center-align the title
        backgroundColor: Colors.blueGrey, // Background color of the app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Score: $score/$totalQuestions',
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 40.0),

            ElevatedButton(
              onPressed: () {
                // Navigate back to the initial quiz screen using the named route
                Navigator.pushNamed(context, '/quiz');
              },
              child: Text('Restart Quiz', style: TextStyle(fontSize: 24),),
            ),
          ],
        ),
      ),
    );
  }
}
