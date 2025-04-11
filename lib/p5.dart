import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 05',
      home: HomePage(),
      routes: {
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HomePage',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('Second Page'),
              onPressed: () => Navigator.pushNamed(context, '/second'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '2nd Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('Back'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
