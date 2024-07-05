import 'package:flutter/material.dart';

import 'package:simple_ui/core/styles/color.dart';
import 'package:simple_ui/core/styles/textstyle.dart';

class SimpleSnackBar{
  
  static void show ({
    required BuildContext context,
    required String message,
    required Color bgColor,
    Color? borderColor,
    Color? messageColor,
    required String actionText,
    required VoidCallback snackBarAction

  }){
    final snackBar = SnackBar(
      content: Container(

      height: MediaQuery.of(context).size.height * .06,
      child: Text(message, style: SimpleTextStyle.titleMedium(color: messageColor ?? Colors.black),)),
      width: MediaQuery.of(context).size.width * .9,
      

      backgroundColor: bgColor,
      behavior: SnackBarBehavior.floating,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? SimpleColors.primary ),
          borderRadius: new BorderRadius.all(new Radius.circular(12))),
      action: SnackBarAction(label: actionText, textColor: messageColor  ?? Colors.black , onPressed: snackBarAction ),
    );

  

  
  ScaffoldMessenger.of(context).showSnackBar(snackBar);

  

}}