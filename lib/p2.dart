import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isPressed = false; // ✅ Track button press                                                                                                                                                                                                                                                                                                                           

  void onPress() {
    setState(() {
      isPressed = true; // ✅ Change state when button is pressed
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 02',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Problem 02'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isPressed ? 'Button Pressed!' : 'Hello World!',
                style: TextStyle(fontSize: 30.0, 
                color: isPressed ? Colors.blue.shade500 : Colors.blue.shade200,
                ),
              ),
              const SizedBox(height: 20), // ✅ Added spacing
              ElevatedButton(
                onPressed: onPress,
                child: const Text('Press'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
