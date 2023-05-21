import 'package:flutter/material.dart';

import 'pages/home_page.dart';
// import 'pages/jokenpo_game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   useMaterial3: true,
      // ),
      title: 'JOKENPO',
      home: HomePage(),
    );
  }
}
