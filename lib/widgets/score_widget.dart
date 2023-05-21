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
        Row(
          children: [
            Image.asset(
              imgPath,
              width: 40.0,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  score.toString(),
                  style: kScoreNumberTextStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  scoreDescription,
                  style: kScoreDescriptionTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
