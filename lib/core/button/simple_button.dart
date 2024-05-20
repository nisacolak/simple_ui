import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? labelColor;
  final VoidCallback onPressed;
  const SimpleButton(
      {super.key,
      required this.text,
    this.backgroundColor,
      this.labelColor,
      required this.onPressed,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height * 0.06,
      width: width ?? MediaQuery.of(context).size.width * 0.70,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          onPressed: onPressed,
          child: Text(text)),
    );
  }
}
