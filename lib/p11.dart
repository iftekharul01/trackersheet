import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 11',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Problem 11'),
          centerTitle: true,
        ),
        body: Center(
          child: Image.asset(
            'assets/images/download.jpg',
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
