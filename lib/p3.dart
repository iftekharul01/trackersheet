import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 03',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Problem 03'),
          centerTitle: true,
        ),
        body: ListView(
          children: List.generate(20, (index) {
            return ListTile(
              title: Text('Person ${index + 1}'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              tileColor: Colors.primaries[index % Colors.primaries.length],
            );
          }),
        ),
      ),
    );
  }
}
