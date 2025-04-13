import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 12',
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Problem 12'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent.shade200,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurpleAccent.shade700, 
                  blurRadius: 15,
                  offset: Offset(0, 4),
                ),
              ],
            ),
              child:  Center(
                child: Text(
                  'Hello, World!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
