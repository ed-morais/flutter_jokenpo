import 'package:flutter/material.dart';

import '../config/const.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const Button({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff721d43),
        padding: const EdgeInsets.all(20),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: kPlayerLarge.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
