import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/textstyle.dart';



class CustomAlertDialog extends StatelessWidget {

  final String title;
  final String description;
CustomAlertDialog({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title, style: SimpleTextStyle.titleMedium(),),
      content: Text(description, style: SimpleTextStyle.titleSmallLight(),),
      

    );

  }
}