import 'package:flutter/material.dart';

class SimpleIconButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget icon;
  final void Function() onPressed;
  const SimpleIconButton(
      {super.key, this.width, this.height,  required this.onPressed,
       required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height * 0.06,
      // width: width ?? MediaQuery.of(context).size.width * 0.70,
      child: IconButton(icon: icon, onPressed: onPressed),
    );
  }
}
