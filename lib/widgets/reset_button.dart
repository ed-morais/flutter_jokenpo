import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.blue, // <-- Button color
        foregroundColor: Colors.red, // <-- Splash color
      ),
      child: const Icon(
        Icons.restart_alt_rounded,
        color: Colors.white,
        // size: 10.0,
      ),
    );
  }
}
