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
        padding: const EdgeInsets.all(15),
        backgroundColor: Colors.blue, // <-- Button color
      ),
      child: const Icon(
        Icons.refresh,
        color: Colors.white,
        size: 40.0,
      ),
    );
  }
}
