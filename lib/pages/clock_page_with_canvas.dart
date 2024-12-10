import 'dart:async';

import 'package:first_app/widgets/digital_clock.dart';
import 'package:flutter/material.dart';

class ClockPageDigital extends StatefulWidget {
  const ClockPageDigital({super.key});

  @override
  State<ClockPageDigital> createState() => _ClockPageDigitalState();
}

class _ClockPageDigitalState extends State<ClockPageDigital> {
  late Timer timer;
  String currentTime = "";

  @override
  void initState() {
    super.initState();
    updateTime();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      updateTime();
    });
  }

  void updateTime() {
    final now = DateTime.now();
    setState(() {
      currentTime = "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Seven Segment Clock")),
      body: Center(
        child: DigitalClock(
          time: currentTime,
          digitWidth: 50,
          digitHeight: 100,
          activeColor: Colors.black,
          inactiveColor: Colors.grey,
        ),
      ),
    );
  }
}
