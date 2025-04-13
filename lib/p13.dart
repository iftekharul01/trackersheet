import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Problem 13',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade300,
          leading: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  'assets/images/download_2.jpg',
                ),
              )),
          title: Text('Problem 13'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Action when the icon is pressed
              },
            )
          ],
        ),
        body: Center(
          child: Text(
            'Custom AppBar',
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
