import 'package:flutter/material.dart';

import '../config/config.dart';

class LegendPlayer extends StatelessWidget {
  final String text;
  const LegendPlayer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: kScoreDescriptionTextStyle.copyWith(
        fontSize: 25,
      ),
    );
  }
}
