import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
