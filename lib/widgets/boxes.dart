import 'package:flutter/material.dart';
import 'package:messaging/colors.dart';

class Boxes extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color color;
  final Color? iconColor;
  final double borderRadius;
  const Boxes(
      {Key? key,
      required this.icon,
      required this.borderRadius,
      this.iconColor,
      this.size,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: Center(
        child: Icon(
          icon,
          color: iconColor,
          size: size,
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: color,
          )),
    );
  }
}
