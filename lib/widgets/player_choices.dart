import 'package:flutter/material.dart';

class PlayersChoices extends StatelessWidget {
  final String playerChoiceImage;
  const PlayersChoices({
    super.key,
    required this.playerChoiceImage,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Image.asset(playerChoiceImage),
    );
  }
}
