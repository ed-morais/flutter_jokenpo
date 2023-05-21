import 'package:flutter/material.dart';

import '../constants/const.dart';
import '../constants/rules.dart';
import '../widgets/button.dart';
import 'jokenpo_game.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              List<Widget> ruleWidgets = [];

              Rules.rules.forEach((key, value) {
                ruleWidgets.add(
                  ListTile(
                    title: Text(
                      'Regra $key:',
                      style: kScoreDescriptionTextStyle.copyWith(
                          color: Colors.black),
                    ),
                    subtitle: Text(
                      value,
                      style: kScoreDescriptionTextStyle.copyWith(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              });

              return AlertDialog(
                title: Text(
                  'REGRAS',
                  textAlign: TextAlign.center,
                  style:
                      kScoreDescriptionTextStyle.copyWith(color: Colors.black),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: ruleWidgets,
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
                    // #e94f75
                    // #679480
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
          )
        ],
      ),
    );
  }
}
