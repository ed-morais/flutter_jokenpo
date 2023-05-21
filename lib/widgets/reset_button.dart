import 'package:flutter/material.dart';

import '../config/const.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff721d43),
        padding: const EdgeInsets.all(20),
      ),
      onPressed: () =>
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false),
      child: Text(
        'REINICIAR',
        style: kPlayerLarge.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
