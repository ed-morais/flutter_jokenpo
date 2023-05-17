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
                    Image.network(
                      'https://art.pixilart.com/1a6c64727dac4a7.png',
                      width: 100,
                    ),
                    const Text('DERROTAS'),
                  ],
                ),
                Column(
                  children: [
                    const Text('04'),
                    Image.network(
                      'https://art.pixilart.com/1a6c64727dac4a7.png',
                      width: 100,
                    ),
                    const Text('DERROTAS'),
                  ],
                ),
                Column(
                  children: [
                    const Text('03'),
                    Image.network(
                      'https://art.pixilart.com/1a6c64727dac4a7.png',
                      width: 100,
                    ),
                    const Text('DERROTAS'),
                  ],
                ),
              ],
            ),
            const Text('VOCÊ GANHOU'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://img.lovepik.com/free-png/20211216/lovepik-scissors-png-image_401704654_wh1200.png',
                  width: 190,
                ),
                Image.network(
                  'https://img.lovepik.com/free-png/20211216/lovepik-scissors-png-image_401704654_wh1200.png',
                  width: 190,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
