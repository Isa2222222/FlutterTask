// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.star, size: 50),
            Icon(Icons.favorite, size: 50),
            Icon(Icons.thumb_up, size: 50),
            SizedBox(
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
