import 'package:first_app/widgets/canvas/colon_painter.dart';
import 'package:first_app/widgets/canvas/number_painter.dart';
import 'package:flutter/material.dart';

class DigitalClock extends StatelessWidget {
  final String time;
  final double digitWidth;
  final double digitHeight;
  final Color activeColor;
  final Color inactiveColor;

  const DigitalClock({
    super.key,
    required this.time,
    this.digitWidth = 50,
    this.digitHeight = 100,
    this.activeColor = Colors.black,
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NumberDigit(
          digit: int.parse(time[0]),
          width: digitWidth,
          height: digitHeight,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
        ),
        const SizedBox(width: 10),
        NumberDigit(
          digit: int.parse(time[1]),
          width: digitWidth,
          height: digitHeight,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
        ),
        const SizedBox(width: 10),
        ColonWidget(
          width: digitWidth / 2,
          height: digitHeight,
          color: activeColor,
        ),
        const SizedBox(width: 10),
        NumberDigit(
          digit: int.parse(time[3]),
          width: digitWidth,
          height: digitHeight,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
        ),
        const SizedBox(width: 10),
        NumberDigit(
          digit: int.parse(time[4]),
          width: digitWidth,
          height: digitHeight,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
        ),
      ],
    );
  }
}