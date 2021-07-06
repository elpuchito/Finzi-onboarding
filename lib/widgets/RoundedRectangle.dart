import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RoundedRectangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.01760563);
    path_0.cubicTo(
        size.width * 0.3384718,
        size.height * 0.01760563,
        size.width * 0.2165662,
        size.height * 0.04785254,
        size.width * 0.1354211,
        size.height * 0.1257430);
    path_0.cubicTo(
        size.width * 0.05412162,
        size.height * 0.2037817,
        size.width * 0.01760563,
        size.height * 0.3258803,
        size.width * 0.01760563,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.01760563,
        size.height * 0.6615282,
        size.width * 0.04785254,
        size.height * 0.7834366,
        size.width * 0.1257430,
        size.height * 0.8645775);
    path_0.cubicTo(
        size.width * 0.2037817,
        size.height * 0.9458803,
        size.width * 0.3258803,
        size.height * 0.9823944,
        size.width * 0.5000000,
        size.height * 0.9823944);
    path_0.cubicTo(
        size.width * 0.6615282,
        size.height * 0.9823944,
        size.width * 0.7834366,
        size.height * 0.9521479,
        size.width * 0.8645775,
        size.height * 0.8742606);
    path_0.cubicTo(
        size.width * 0.9458803,
        size.height * 0.7962183,
        size.width * 0.9823944,
        size.height * 0.6741197,
        size.width * 0.9823944,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.9823944,
        size.height * 0.3384718,
        size.width * 0.9521479,
        size.height * 0.2165662,
        size.width * 0.8742606,
        size.height * 0.1354211);
    path_0.cubicTo(
        size.width * 0.7962183,
        size.height * 0.05412162,
        size.width * 0.6741197,
        size.height * 0.01760563,
        size.width * 0.5000000,
        size.height * 0.01760563);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03521127;
    paint_0_stroke.color = Color(0xff962597).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.9647887, size.height * 0.03521127),
        Offset(size.width * 0.6236754, size.height * 0.6428197),
        [Color(0xff00C191).withOpacity(1), Color(0xff008467).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
