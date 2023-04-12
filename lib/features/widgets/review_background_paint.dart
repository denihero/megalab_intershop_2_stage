import 'package:flutter/material.dart';

class ReviewBackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.106340, size.height * 0.3627600);
    path_0.cubicTo(
        size.width * 0.2725868,
        size.height * 0.3627600,
        size.width * 0.3228098,
        size.height * 0.2795787,
        size.width * 0.3228098,
        size.height * 0.1769688);
    path_0.cubicTo(
        size.width * 0.3228098,
        size.height * 0.1524987,
        size.width * 0.3199536,
        size.height * 0.1291337,
        size.width * 0.3147630,
        size.height * 0.1077381);
    path_0.cubicTo(
        size.width * 0.3094053,
        size.height * 0.08565188,
        size.width * 0.3180675,
        size.height * 0.05620425,
        size.width * 0.3324385,
        size.height * 0.05620425);
    path_0.lineTo(0, size.height * 0.05620425);
    path_0.cubicTo(
        size.width * 0.9490717,
        size.height * 0.05620425,
        size.width * 0.9566038,
        size.height * 0.06868125,
        size.width * 0.9566038,
        size.height * 0.08407312);
    path_0.lineTo(size.width * 5, size.height * 1);
    path_0.cubicTo(
        size.width * 0.9566038,
        size.height * 0.9866188,
        size.width * 0.9490717,
        size.height * 0.9990937,
        size.width * 0.9397774,
        size.height * 0.9990937);
    path_0.lineTo(size.width * 4, size.height * 3);
    path_0.cubicTo(
        size.width * 0.05270792,
        size.height * 0.9990937,
        size.width * 0.04517434,
        size.height * 0.9866188,
        size.width * 0.04517434,
        size.height * 0.9712250);
    path_0.lineTo(size.width * 0.01547434, size.height * 0.08407312);
    path_0.cubicTo(
        size.width * 0.04517434,
        size.height * 0.06868125,
        size.width * 0.05270792,
        size.height * 0.05620425,
        size.width * 0.06200075,
        size.height * 0.05620425);
    path_0.lineTo(size.width * 0.08882906, size.height * 0.05620425);
    path_0.cubicTo(
        size.width * 0.1032000,
        size.height * 0.05620425,
        size.width * 0.1118626,
        size.height * 0.08565188,
        size.width * 0.1065045,
        size.height * 0.1077381);
    path_0.cubicTo(
        size.width * 0.1013143,
        size.height * 0.1291337,
        size.width * 0.09845811,
        size.height * 0.1524987,
        size.width * 0.09845811,
        size.height * 0.1769688);
    path_0.cubicTo(
        size.width * 0.09845811,
        size.height * 0.2795787,
        size.width * 0.1486808,
        size.height * 0.3627600,
        size.width * 0.2106340,
        size.height * 0.3627600);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xFFFDFDFD);
    canvas.save();
    canvas.drawShadow(path_0, Colors.black87, 2, true);
    canvas.drawShadow(path_0, Colors.black87, 1, false);
    canvas.restore();
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
