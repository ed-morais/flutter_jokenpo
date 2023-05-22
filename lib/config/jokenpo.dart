import 'dart:math';

import './const.dart';

enum Moves {
  rock,
  paper,
  scissors,
}

class Jokenpo {
  String imgMoveUser = "assets/images/inicialHand_left.png";
  String imgComputer = "assets/images/inicialHand_right.png";

  String cardPaper = kcardPaperPath;
  String cardRock = kcardRockPath;
  String cardScissors = kcardScissorsPath;

  int userScore = 00;
  int computerScore = 00;
  int equalScore = 00;

  Moves? _currentMoveUser;
  int? _currentComputerMove;

  String phrase = 'Escolha uma opção';

  void _repeatedMove() {
    phrase = 'NÃO PODE REPETIR A JOGADA!';
  }

  void playGame(Moves userMove) {
    if (_currentMoveUser == userMove) {
      _repeatedMove();
      return;
    }
    _gesturePlayerImage(userMove);
    _currentMoveUser = userMove;

    int number = Random().nextInt(3);
    while (number == _currentComputerMove) {
      number = Random().nextInt(3);
    }
    _currentComputerMove = number;
    var computerMove = Moves.values[number];

    _gestureComputerImage(computerMove);
    _checkWinner(userMove, computerMove);
  }

  void _gesturePlayerImage(Moves userMove) {
    switch (userMove) {
      case Moves.rock:
        imgMoveUser = "assets/images/handRock_left.png";
        cardRock = kcardRockBlockedPath;
        cardPaper = kcardPaperPath;
        cardScissors = kcardScissorsPath;
        break;
      case Moves.paper:
        imgMoveUser = "assets/images/handPaper_left.png";
        cardRock = kcardRockPath;
        cardPaper = kcardPaperBlockedPath;
        cardScissors = kcardScissorsPath;
        break;
      case Moves.scissors:
        imgMoveUser = "assets/images/handScissors_left.png";
        cardRock = kcardRockPath;
        cardPaper = kcardPaperPath;
        cardScissors = kcardScissorsBlockedPath;
    }
  }

  void _gestureComputerImage(Moves computerMove) {
    switch (computerMove) {
      case Moves.rock:
        imgComputer = "assets/images/handRock_right.png";
        break;
      case Moves.paper:
        imgComputer = "assets/images/handPaper_right.png";
        break;
      case Moves.scissors:
        imgComputer = "assets/images/handScissors_right.png";
    }
  }

  void _checkWinner(Moves userMove, Moves computerMove) {
    if ((userMove == Moves.rock && computerMove == Moves.scissors) ||
        (userMove == Moves.scissors && computerMove == Moves.paper) ||
        (userMove == Moves.paper && computerMove == Moves.rock)) {
      phrase = "VOCÊ GANHOU";
      userScore += 1;
    } else if ((userMove == Moves.scissors && computerMove == Moves.rock) ||
        (userMove == Moves.paper && computerMove == Moves.scissors) ||
        (userMove == Moves.rock && computerMove == Moves.paper)) {
      phrase = "VOCÊ PERDEU";
      computerScore += 1;
    } else {
      phrase = "EMPATE";
      equalScore += 1;
    }
  }
}
