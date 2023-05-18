import 'package:flutter/material.dart';

import '../constants/const.dart';

class ScoreWidget extends StatelessWidget {
  final int score;
  final String imgPath;
  final String scoreDescription;
  const ScoreWidget({
    super.key,
    required this.score,
    required this.imgPath,
    required this.scoreDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          score.toString(),
          style: kScoreNumberTextStyle,
        ),
        Image.asset(
          imgPath,
          width: 70.0,
        ),
        Text(
          scoreDescription,
          style: kScoreDescriptionTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
