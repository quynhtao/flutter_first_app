import 'package:flutter/material.dart';

class NumberPainter extends CustomPainter {
  final int number;
  final Color activeColor;
  final Color inactiveColor;

  NumberPainter({
    required this.number,
    this.activeColor = Colors.black,
    this.inactiveColor = Colors.grey,
  });

  final Map<int, List<bool>> segments = {
    0: [true, true, true, true, true, true, false],
    1: [false, true, true, false, false, false, false],
    2: [true, true, false, true, true, false, true],
    3: [true, true, true, true, false, false, true],
    4: [false, true, true, false, false, true, true],
    5: [true, false, true, true, false, true, true],
    6: [true, false, true, true, true, true, true],
    7: [true, true, true, false, false, false, false],
    8: [true, true, true, true, true, true, true],
    9: [true, true, true, true, false, true, true],
  };

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    final List<bool> activeSegments =
        segments[number] ?? [false, false, false, false, false, false, false];

    final double width = size.width;
    final double height = size.height;
    final double thickness = width * 0.1;

    void drawSegment(bool isActive, List<Offset> points) {
      paint.color = isActive ? activeColor : inactiveColor;

      final path = Path()..moveTo(points[0].dx, points[0].dy);
      for (int i = 1; i < points.length; i++) {
        path.lineTo(points[i].dx, points[i].dy);
      }
      path.close();
      canvas.drawPath(path, paint);
    }

    drawSegment(
        activeSegments[0], segmentPoints('a', width, height, thickness)); // a
    drawSegment(
        activeSegments[1], segmentPoints('b', width, height, thickness)); // b
    drawSegment(
        activeSegments[2], segmentPoints('c', width, height, thickness)); // c
    drawSegment(
        activeSegments[3], segmentPoints('d', width, height, thickness)); // d
    drawSegment(
        activeSegments[4], segmentPoints('e', width, height, thickness)); // e
    drawSegment(
        activeSegments[5], segmentPoints('f', width, height, thickness)); // f
    drawSegment(
        activeSegments[6], segmentPoints('g', width, height, thickness)); // g
  }

  List<Offset> segmentPoints(
      String segment, double width, double height, double thickness) {
    final double halfThickness = thickness / 2;

    switch (segment) {
      case 'a': // top horizontal
        return [
          Offset(thickness, 0),
          Offset(width - thickness, 0),
          Offset(width - thickness - halfThickness, thickness),
          Offset(thickness + halfThickness, thickness),
        ];
      case 'b': // right top vertical
        return [
          Offset(width - thickness, thickness),
          Offset(width, thickness + halfThickness),
          Offset(width, height / 2 - thickness - halfThickness),
          Offset(width - thickness, height / 2 - thickness),
        ];
      case 'c': // right bottom vertical
        return [
          Offset(width - thickness, height / 2 + thickness),
          Offset(width, height / 2 + thickness + halfThickness),
          Offset(width, height - thickness - halfThickness),
          Offset(width - thickness, height - thickness),
        ];
      case 'd': // bottom horizontal
        return [
          Offset(thickness, height - thickness),
          Offset(width - thickness, height - thickness),
          Offset(width - thickness - halfThickness, height),
          Offset(thickness + halfThickness, height),
        ];
      case 'e': // left bottom vertical
        return [
          Offset(0, height / 2 + thickness + halfThickness),
          Offset(thickness, height / 2 + thickness),
          Offset(thickness, height - thickness),
          Offset(0, height - thickness - halfThickness),
        ];
      case 'f': // left top vertical
        return [
          Offset(0, thickness + halfThickness),
          Offset(thickness, thickness),
          Offset(thickness, height / 2 - thickness),
          Offset(0, height / 2 - thickness - halfThickness),
        ];
      case 'g': // center horizontal
        return [
          Offset(thickness, height / 2 - halfThickness),
          Offset(width - thickness, height / 2 - halfThickness),
          Offset(width - thickness - halfThickness, height / 2 + halfThickness),
          Offset(thickness + halfThickness, height / 2 + halfThickness),
        ];
      default:
        return [];
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class NumberDigit extends StatelessWidget {
  final int digit;
  final double width;
  final double height;
  final Color activeColor;
  final Color inactiveColor;

  const NumberDigit({
    super.key,
    required this.digit,
    this.width = 50,
    this.height = 100,
    this.activeColor = Colors.black,
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: NumberPainter(
        number: digit,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
      ),
    );
  }
}
