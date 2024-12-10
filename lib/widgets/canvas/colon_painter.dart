import 'package:flutter/material.dart';

class ColonPainter extends CustomPainter {
  final Color color;

  ColonPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final double circleRadius = size.width / 4;
    final Offset topCircleCenter = Offset(size.width / 2, size.height / 3);
    final Offset bottomCircleCenter = Offset(size.width / 2, 2 * size.height / 3);

    canvas.drawCircle(topCircleCenter, circleRadius, paint);
    canvas.drawCircle(bottomCircleCenter, circleRadius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ColonWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const ColonWidget({
    super.key,
    this.width = 20,
    this.height = 100,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: ColonPainter(color: color),
    );
  }
}
