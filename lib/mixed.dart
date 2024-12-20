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
        body: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            const Spacer(),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
