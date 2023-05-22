import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../config/config.dart';
import '../config/rules.dart';
import '../widgets/button.dart';
import 'jokenpo_game.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final player = AudioPlayer();
  @override
  void initState() {
    super.initState();
    player.setReleaseMode(ReleaseMode.loop);
    player.play(AssetSource('audio/audio_app.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: const Color(0xff721d43),
        child: const Icon(Icons.rule),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  'REGRAS',
                  textAlign: TextAlign.center,
                  style: kScoreDescriptionTextStyle.copyWith(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: Rules.rules.entries
                        .map((rule) => ListTile(
                              title: Text(
                                'Regra ${rule.key}:',
                                style: kScoreDescriptionTextStyle.copyWith(
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                rule.value,
                                style: kScoreDescriptionTextStyle.copyWith(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Color(0xff721d43)),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'JOKENPÔ',
                  style: kPlayerLarge.copyWith(
                    fontSize: 70,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Button(
                  text: 'INICIAR',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JokenpoGame(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
