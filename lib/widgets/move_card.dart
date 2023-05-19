import 'package:flutter/material.dart'; // Replace with your sound file path

class MoveCard extends StatelessWidget {
  final double topMargin;
  final double angle;
  final String imgPath;
  final void Function() onTap;
  const MoveCard({
    super.key,
    required this.topMargin,
    required this.angle,
    required this.imgPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsetsDirectional.only(top: topMargin),
          child: Transform.rotate(
            angle: angle,
            child: Image.asset(
              imgPath,
              height: 250.0,
              // width: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}
