import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/color.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: SimpleColors.info,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(mainAxisSize: MainAxisSize.min,
        children: [
          
        ],),
      ),
    );
  }
}