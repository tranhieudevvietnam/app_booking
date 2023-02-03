import 'dart:developer';

import 'package:flutter/material.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          CustomPaint(
            painter: ShapePainter(x: size.width, y: size.width / 3),
            child: Container(),
          )
        ],
      )),
    );
  }
}

class ShapePainter extends CustomPainter {
  final double x;
  final double y;

  ShapePainter({required this.x, required this.y});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();

    log("x: $x");
    log("y: $y");
    log("size: ${size.width} - ${size.height}");

    path.moveTo(size.width, -56);
    path.lineTo(size.width - 200, -56);
    // path.moveTo(size.width, -56);
    // path.lineTo(size.width - 200, -56);
    // path.quadraticBezierTo(size.width - 200, 200 - 56, size.width, 200 - 56);

    canvas.drawPath(path, paint);

    // Offset center = Offset(size.width / 2, size.height / 2);

    // canvas.drawCircle(center, 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
