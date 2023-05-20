import 'package:flutter/material.dart';

import '../constants/const.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff679480),
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
    // return ElevatedButton(
    //   onPressed: () =>
    //       Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false),
    //   style: ElevatedButton.styleFrom(
    //     padding: const EdgeInsets.all(15),
    //     backgroundColor: Colors.blue, // <-- Button color
    //   ),
    //   child: const Icon(
    //     Icons.refresh,
    //     color: Colors.white,
    //     size: 40.0,
    //   ),
    // );
  }
}
