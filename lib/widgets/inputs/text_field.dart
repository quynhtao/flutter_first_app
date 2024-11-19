import 'package:first_app/configs/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String placeholder;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.placeholder,
    this.controller,
  });

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _isFocused = hasFocus;
        });
      },
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.placeholder,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: AppColors.lightBlueColor,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
