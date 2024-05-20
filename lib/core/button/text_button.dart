import 'package:flutter/material.dart';

class SimpleTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final double? fontSize;
  const SimpleTextButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.textColor,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(text, style: TextStyle(color: textColor, fontSize: fontSize)),
    );
  }
}
