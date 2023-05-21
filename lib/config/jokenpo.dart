import 'dart:math';

import './const.dart';

class Jokenpo {
  String imgMoveUser = "assets/images/inicialHand_left.png";
  String imgComputer = "assets/images/inicialHand_right.png";

  String cardPaper = kcardPaperPath;
  String cardRock = kcardRockPath;
  String cardScissors = kcardScissorsPath;

  int userScore = 00;
  int computerScore = 00;
  int equalScore = 00;

  String _currentMoveUser = '';
  int? _currentComputerMove;

  String phrase = 'Escolha uma opção';
  List<String> moves = ["pedra", "papel", "tesoura"];

  void repeatedMove() {
    phrase = 'NÃO PODE REPETIR A JOGADA!';
  }

  void playGame(String userMove) {
    if (_currentMoveUser == userMove) {
      repeatedMove();
      return;
    }
    gesturePlayerImage(userMove);
    _currentMoveUser = userMove;

    int number = Random().nextInt(3);
    while (number == _currentComputerMove) {
      number = Random().nextInt(3);
    }
    _currentComputerMove = number;
    var computerMove = moves[number];

    gestureComputerImage(computerMove);
    checkWinner(userMove, computerMove);
  }

  void gesturePlayerImage(userMove) {
    switch (userMove) {
      case "pedra":
        imgMoveUser = "assets/images/handRock_left.png";
        cardRock = kcardRockBlockedPath;
        cardPaper = kcardPaperPath;
        cardScissors = kcardScissorsPath;
        break;
      case "papel":
        imgMoveUser = "assets/images/handPaper_left.png";
        cardRock = kcardRockPath;
        cardPaper = kcardPaperBlockedPath;
        cardScissors = kcardScissorsPath;
        break;
      case "tesoura":
        imgMoveUser = "assets/images/handScissors_left.png";
        cardRock = kcardRockPath;
        cardPaper = kcardPaperPath;
        cardScissors = kcardScissorsBlockedPath;
    }
  }

  void gestureComputerImage(computerMove) {
    switch (computerMove) {
      case "pedra":
        imgComputer = "assets/images/handRock_right.png";
        break;
      case "papel":
        imgComputer = "assets/images/handPaper_right.png";
        break;
      case "tesoura":
        imgComputer = "assets/images/handScissors_right.png";
    }
  }

  void checkWinner(userMove, computerMove) {
    if ((userMove == "pedra" && computerMove == "tesoura") ||
        (userMove == "tesoura" && computerMove == "papel") ||
        (userMove == "papel" && computerMove == "pedra")) {
      phrase = "VOCÊ GANHOU";
      userScore += 1;
    } else if ((userMove == "tesoura" && computerMove == "pedra") ||
        (userMove == "papel" && computerMove == "tesoura") ||
        (userMove == "pedra" && computerMove == "papel")) {
      phrase = "VOCÊ PERDEU";
      computerScore += 1;
    } else {
      phrase = "EMPATE";
      equalScore += 1;
    }
  }
}
