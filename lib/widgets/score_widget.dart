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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          score.toString(),
          style: kScoreNumberTextStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          imgPath,
          width: 40.0,
        ),
        const SizedBox(
          height: 10,
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
