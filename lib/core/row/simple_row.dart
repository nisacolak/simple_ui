import 'package:flutter/material.dart';

class SimpleRow extends StatelessWidget {
  final double? width;
  final double? height;
  const SimpleRow({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: SizedBox(
        width: width,
        height: height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
