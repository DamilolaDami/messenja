import 'package:flutter/material.dart';
import 'dart:math';
import 'package:vector_math/vector_math.dart' as vmath;

class MyPainter extends CustomPainter {
  final Color color;
  MyPainter(this.color);
  @override
  double doubleToAngle(double angle) => angle * pi / 180.0;

  void drawArcWithRadius(
      Canvas canvas, Offset center, double radius, double angle, Paint paint) {
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        doubleToAngle(-90.0), doubleToAngle(angle), false, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = Offset(size.width / 2.0, size.height / 2.0);
    final double radius = size.width / 3.0;
    double angle = 210.0;
    Paint paint = Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 40.0
      ..style = PaintingStyle.stroke
      ..color = Colors.red
      ..shader = SweepGradient(colors: [
        color,
        color.withAlpha(6),
      ], startAngle: 0.0, endAngle: doubleToAngle(angle))
          .createShader(Rect.fromCircle(center: center, radius: radius));

    drawArcWithRadius(canvas, center, radius, angle, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
