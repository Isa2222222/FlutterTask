import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
