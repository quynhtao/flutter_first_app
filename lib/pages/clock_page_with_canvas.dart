import 'dart:async';

import 'package:flutter/material.dart';

class ClockPageDigital extends StatefulWidget {
  const ClockPageDigital({super.key});

  @override
  State<ClockPageDigital> createState() => _ClockPageDigitalState();
}

class _ClockPageDigitalState extends State<ClockPageDigital> {
  late Timer timer;
  late DateTime currentTime;

  @override
  void initState() {
    super.initState();
    currentTime = DateTime.now();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        currentTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
