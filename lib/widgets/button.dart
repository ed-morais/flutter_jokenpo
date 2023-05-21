import 'package:flutter/material.dart';

import '../constants/const.dart';

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
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 80),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff721d43),
            padding: const EdgeInsets.all(20),
          ),
          onPressed: onPressed,
          // onPressed: () =>
          //     Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: kPlayerLarge.copyWith(
                  color: Colors.white,
                ),
              ),
              // const Icon(
              //   Icons.play_arrow,
              //   color: Colors.white,
              //   size: 40.0,
              // ),
            ],
          )),
    );
  }
}
