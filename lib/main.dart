import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JOKENPO',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JOKENPÔ'),
          centerTitle: true,
        ),
        body: const Column(
          children: [
            Text('TESTANDO'),
          ],
        ),
      ),
    );
  }
}
