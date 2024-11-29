import 'package:flutter/material.dart';
import 'dart:async';

class ClockPage extends StatefulWidget {
  const ClockPage({super.key});

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  late String _timeString;

  @override
  void initState() {
    super.initState();
    _timeString = _formatCurrentTime();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _updateTime());
  }

  void _updateTime() {
    setState(() {
      _timeString = _formatCurrentTime();
    });
  }

  String _formatCurrentTime() {
    final now = DateTime.now();
    return "${_formatTwoDigits(now.hour)}:${_formatTwoDigits(now.minute)}:${_formatTwoDigits(now.second)}";
  }

  String _formatTwoDigits(int n) {
    return n.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          _timeString,
          style: const TextStyle(
            fontSize: 64,
            color: Colors.white,
            fontFamily: 'DSEG7Classic',
          ),
        ),
      ),
    );
  }
}
