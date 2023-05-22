import 'package:flutter/material.dart';

import '../config/config.dart';

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
        Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imgPath,
                  width: 40.0,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  score.toString(),
                  style: kScoreNumberTextStyle.copyWith(
                    fontSize: 35,
                  ),
                ),
              ],
            )
          ],
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
    );
  }
}
