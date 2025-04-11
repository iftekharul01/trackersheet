import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 04',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Problem 04'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Item 01',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.blue,
                  fontFamily: 'DM Sans',
                ),
              ),
              Text(
                'Item 02',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.red,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500, // Medium
                ),
              ),
              Text(
                'Item 03',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow,
                  fontFamily: 'DM Sans',
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                'Item 04',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
