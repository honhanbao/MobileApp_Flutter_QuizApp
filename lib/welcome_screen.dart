
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Quiz App', style: TextStyle(fontSize: 24),), // Set the title for the welcome screen
        centerTitle: true, // Center-align the title
        backgroundColor: Colors.blueGrey, // Background color of the app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/quiz'); // Navigate to the quiz when "Start Quiz" is pressed
              },
              child: Text('Start Quiz', style: TextStyle(fontSize: 24),),
            ),

            SizedBox(height: 40.0),

            ElevatedButton(
              onPressed: () {
                // Exit the app when "Exit" is pressed
                Navigator.of(context).pop();
              },
              child: Text('Exit', style: TextStyle(fontSize: 24),),
            ),
          ],
        ),
      ),
    );
  }
}
