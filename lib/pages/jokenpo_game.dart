import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../config/const.dart';
import '../config/jokenpo.dart';
import '../widgets/button.dart';
import '../widgets/move_card.dart';
import '../widgets/score_widget.dart';

class JokenpoGame extends StatefulWidget {
  const JokenpoGame({
    super.key,
  });

  @override
  State<JokenpoGame> createState() => _JokenpoGameState();
}

class _JokenpoGameState extends State<JokenpoGame> {
  final Jokenpo game = Jokenpo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ScoreWidget(
                      score: game.computerScore,
                      imgPath: 'assets/images/skull_icon.png',
                      scoreDescription: 'DERROTAS',
                    ),
                    ScoreWidget(
                      score: game.userScore,
                      imgPath: 'assets/images/trophy_icon.png',
                      scoreDescription: 'VITÓRIAS',
                    ),
                    ScoreWidget(
                      score: game.equalScore,
                      imgPath: 'assets/images/flag_icon.png',
                      scoreDescription: 'EMPATES',
                    ),
                  ],
                ),
                Text(
                  game.phrase,
                  style: kPlayerLarge,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Image.asset(
                        game.imgMoveUser,
                        // width: 150.0,
                      ),
                    ),
                    Flexible(
                      child: Image.asset(
                        game.imgComputer,
                        // width: 150.0,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'VOCÊ',
                        style: kScoreDescriptionTextStyle.copyWith(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'X',
                        style: kScoreDescriptionTextStyle.copyWith(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'ROBÔ',
                        style: kScoreDescriptionTextStyle.copyWith(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MoveCard(
                        onTap: () {
                          setState(() {
                            AudioPlayer()
                                .play(AssetSource('audio/cardsound.mp3'));
                            game.playGame("pedra");
                          });
                        },
                        topMargin: 20.0,
                        angle: -0.2,
                        imgPath: game.cardRock,
                      ),
                      MoveCard(
                        onTap: () {
                          setState(() {
                            AudioPlayer()
                                .play(AssetSource('audio/cardsound.mp3'));
                            game.playGame("tesoura");
                          });
                        },
                        topMargin: 0.0,
                        angle: 0.0,
                        imgPath: game.cardScissors,
                      ),
                      MoveCard(
                        onTap: () {
                          setState(() {
                            AudioPlayer()
                                .play(AssetSource('audio/cardsound.mp3'));
                            game.playGame("papel");
                          });
                        },
                        topMargin: 20.0,
                        angle: 0.2,
                        imgPath: game.cardPaper,
                      ),
                    ],
                  ),
                ),
                Button(
                  text: 'REINICIAR',
                  onPressed: () => Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
