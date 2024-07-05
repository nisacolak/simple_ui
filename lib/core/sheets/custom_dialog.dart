import 'package:flutter/material.dart';

import 'package:simple_ui/core/styles/textstyle.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final Widget child;
  final String actionText;
  final VoidCallback actionButton;

  final String closeText;
  final VoidCallback closeButton;
  const CustomDialog({super.key, required this.title, required this.child, required this.actionText, required this.actionButton, required this.closeText, required this.closeButton});

  @override
  Widget build(BuildContext context) {
    return Dialog(
    
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
      child: Container(
       padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(title, style: SimpleTextStyle.titleLarge()),
          child,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: actionButton, child: Text(actionText)),
              TextButton(onPressed: closeButton, child: Text(closeText),),
            ],)
        ],),
      ),
    );
  }
}