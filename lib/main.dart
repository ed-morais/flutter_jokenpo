import 'package:flutter/material.dart';

import './widgets/score_widget.dart';
import 'constants/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   useMaterial3: true,
      // ),
      title: 'JOKENPO',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JOKENPÔ'),
          centerTitle: true,
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ScoreWidget(
                  score: 01,
                  imgPath: 'assets/images/skull_icon.png',
                  scoreDescription: 'DERROTAS',
                ),
                ScoreWidget(
                  score: 05,
                  imgPath: 'assets/images/trophy_icon.png',
                  scoreDescription: 'VITÓRIAS',
                ),
                ScoreWidget(
                  score: 03,
                  imgPath: 'assets/images/flag_icon.png',
                  scoreDescription: 'EMPATES',
                ),
              ],
            ),
            const Text(
              'VOCÊ GANHOU',
              style: kResultTextStyle,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Image.asset(
                //   'assets/images/skull_icon.png',
                //   width: 100.0,
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.only(top: 50),
                  child: Transform.rotate(
                    angle: -0.2,
                    child: Image.asset(
                      'assets/images/card_rock.png',
                      height: 200.0,
                      // width: 100.0,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/card_scissors.png',
                  height: 200.0,
                ),
                Container(
                  margin: const EdgeInsetsDirectional.only(top: 50),
                  child: Transform.rotate(
                    angle: 0.2,
                    child: Image.asset(
                      'assets/images/card_paper.png',
                      height: 200.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.blue, // <-- Button color
                    foregroundColor: Colors.red, // <-- Splash color
                  ),
                  child: const Icon(Icons.restart_alt_rounded,
                      color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
