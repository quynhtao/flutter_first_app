import 'package:flutter/material.dart';

class GreyTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const GreyTextButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black45,
        ),
      ),
    );
  }
}
