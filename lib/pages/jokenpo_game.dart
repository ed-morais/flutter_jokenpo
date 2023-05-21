import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../constants/const.dart';
import '../widgets/move_card.dart';
import '../widgets/reset_button.dart';
import '../widgets/score_widget.dart';

class JokenpoGame extends StatefulWidget {
  const JokenpoGame({
    super.key,
  });

  @override
  State<JokenpoGame> createState() => _JokenpoGameState();
}

class _JokenpoGameState extends State<JokenpoGame> {
  String _imgMoveUser = "assets/images/handRock_left.png";
  String _imgComputer = "assets/images/handRock_right.png";
  String cardPaper = kcardPaperPath;
  String cardRock = kcardRockPath;
  String cardScissors = kcardScissorsPath;
  int _userScore = 00;
  int _computerScore = 00;
  int _equalScore = 00;
  String _currentMoveUser = '';
  String phrase = 'Escolha uma opção';
  List<String> moves = ["pedra", "papel", "tesoura"];

  void repeatedMove() {
    setState(() {
      phrase = 'NÃO PODE REPETIR A JOGADA!';
    });
  }

  void playGame(String userMove) {
    if (_currentMoveUser == userMove) {
      repeatedMove();
      debugPrint('NÃO PODE REPETIR A JOGADA!');
      return;
    }
    _currentMoveUser = userMove;
    switch (userMove) {
      case "pedra":
        setState(() {
          _imgMoveUser = "assets/images/handRock_left.png";
          cardRock = kcardRockBlockedPath;
          cardPaper = kcardPaperPath;
          cardScissors = kcardScissorsPath;
        });
        break;
      case "papel":
        setState(() {
          _imgMoveUser = "assets/images/handPaper_left.png";
          cardRock = kcardRockPath;
          cardPaper = kcardPaperBlockedPath;
          cardScissors = kcardScissorsPath;
        });
        break;
      case "tesoura":
        setState(() {
          _imgMoveUser = "assets/images/handScissors_left.png";
          cardRock = kcardRockPath;
          cardPaper = kcardPaperPath;
          cardScissors = kcardScissorsBlockedPath;
        });
    }
    int number = Random().nextInt(3);
    // while (number == 2) {
    //   number = Random().nextInt(3);
    // }

    var computerMove = moves[number];

    switch (computerMove) {
      case "pedra":
        setState(() {
          _imgComputer = "assets/images/handRock_right.png";
        });
        break;
      case "papel":
        setState(() {
          _imgComputer = "assets/images/handPaper_right.png";
        });
        break;
      case "tesoura":
        setState(() {
          _imgComputer = "assets/images/handScissors_right.png";
        });
    }

    if ((userMove == "pedra" && computerMove == "tesoura") ||
        (userMove == "tesoura" && computerMove == "papel") ||
        (userMove == "papel" && computerMove == "pedra")) {
      setState(() {
        phrase = "VOCÊ GANHOU";
        _userScore += 1;
      });
    } else if ((userMove == "tesoura" && computerMove == "pedra") ||
        (userMove == "papel" && computerMove == "tesoura") ||
        (userMove == "pedra" && computerMove == "papel")) {
      setState(() {
        phrase = "VOCÊ PERDEU";
        _computerScore += 1;
      });
    } else {
      setState(() {
        phrase = "EMPATE";
        _equalScore += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('JOKENPÔ'),
      //   backgroundColor: const Color.fromARGB(0, 114, 29, 67),
      //   centerTitle: true,
      // ),
      // backgroundColor: const Color(0xffF7F7F7),
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
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ScoreWidget(
                      score: _computerScore,
                      imgPath: 'assets/images/skull_icon.png',
                      scoreDescription: 'DERROTAS',
                    ),
                    ScoreWidget(
                      score: _userScore,
                      imgPath: 'assets/images/trophy_icon.png',
                      scoreDescription: 'VITÓRIAS',
                    ),
                    ScoreWidget(
                      score: _equalScore,
                      imgPath: 'assets/images/flag_icon.png',
                      scoreDescription: 'EMPATES',
                    ),
                  ],
                ),
                // const SizedBox(height: 20),
                Text(
                  phrase,
                  style: kPlayerLarge,
                  textAlign: TextAlign.center,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Image.asset(
                        _imgMoveUser,
                        // width: 150.0,
                      ),
                    ),
                    Flexible(
                      child: Image.asset(
                        _imgComputer,
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
                        style:
                            kScoreDescriptionTextStyle.copyWith(fontSize: 25),
                      ),
                      Text(
                        'X',
                        style:
                            kScoreDescriptionTextStyle.copyWith(fontSize: 25),
                      ),
                      Text(
                        'ROBÔ',
                        style:
                            kScoreDescriptionTextStyle.copyWith(fontSize: 25),
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
                          AudioPlayer()
                              .play(AssetSource('audio/cardsound.mp3'));
                          playGame("pedra");
                        },
                        topMargin: 20.0,
                        angle: -0.2,
                        imgPath: cardRock,
                      ),
                      MoveCard(
                        onTap: () {
                          AudioPlayer()
                              .play(AssetSource('audio/cardsound.mp3'));
                          playGame("tesoura");
                        },
                        topMargin: 0.0,
                        angle: 0.0,
                        imgPath: cardScissors,
                      ),
                      MoveCard(
                        onTap: () {
                          AudioPlayer()
                              .play(AssetSource('audio/cardsound.mp3'));
                          playGame("papel");
                        },
                        topMargin: 20.0,
                        angle: 0.2,
                        imgPath: cardPaper,
                      ),
                    ],
                  ),
                ),
                const ResetButton(),
                // const SizedBox(height: 16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
