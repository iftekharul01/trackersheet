import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isChanged = false;

  void _animateContainer() {
    setState(() {
      _isChanged = !_isChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Problem 16'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration:  Duration(seconds: 1),
                curve: Curves.easeInOut,
                width: _isChanged ? 200 : 100,
                height: _isChanged ? 200 : 100,
                decoration: BoxDecoration(
                  color: _isChanged ? Colors.blue : Colors.red,
                  borderRadius: BorderRadius.circular(_isChanged
                      ? 100
                      : 0), 
                ),
              ),
               SizedBox(height: 20),
              ElevatedButton(
                onPressed: _animateContainer,
                child:  Text('Animate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
