import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: 'JOKENPO',
      home: Scaffold(
        appBar: AppBar(
          // title: const Text('JOKENPÔ'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text('01'),
                    Image.asset(
                      'assets/images/skull_icon.png',
                      width: 100.0,
                    ),
                    const Text('DERROTAS'),
                  ],
                ),
                Column(
                  children: [
                    const Text('04'),
                    Image.asset(
                      'assets/images/trophy_icon.png',
                      width: 100.0,
                    ),
                    const Text('DERROTAS'),
                  ],
                ),
                Column(
                  children: [
                    const Text('03'),
                    Image.asset(
                      'assets/images/flag_icon.png',
                      width: 100.0,
                    ),
                    const Text('DERROTAS'),
                  ],
                ),
              ],
            ),
            const Text('VOCÊ GANHOU'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Image.asset(
                //   'assets/images/skull_icon.png',
                //   width: 100.0,
                // ),
                // Image.asset(
                //   'assets/images/trophy_icon.png',
                //   width: 100.0,
                // ),
                // Image.asset(
                //   'assets/images/flag_icon.png',
                //   width: 100.0,
                // ),
                // Image.network(
                //   'images/',
                //   width: 190,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
