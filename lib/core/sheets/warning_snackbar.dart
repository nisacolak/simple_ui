import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/color.dart';
import 'package:simple_ui/core/styles/textstyle.dart';

class WarningSnackBar{

  static show (BuildContext context, {
    String title = 'Snackbar Title',
    String description = 'Snackbar Description',
    Duration duration = const Duration(seconds: 3),
    
    iconData,
    functionIcon,
    onPressed,
  }){
   
   
    SnackBar snackBar = SnackBar(content: Container(

    width: double.infinity,
    height: 70,
    padding: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: SimpleColors.primary.withAlpha(20), 
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: SimpleColors.primary.withAlpha(90,), width: 2),
    ),
    child: Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: SimpleColors.primary,
            borderRadius: BorderRadius.circular(20),
          ),

          child: Icon(iconData, color: Colors.white,),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(title,style: SimpleTextStyle.titleMedium(color: Colors.black),),
                Text( description,style:  SimpleTextStyle.titleSmall(color: Colors.black)),
              ],
            ),
          ),
        ),
        Container(
          width: 40,
          height: 40,
          child: IconButton(onPressed: onPressed, icon: Icon(functionIcon, color: Colors.black,)
         ),
        ),
      ],
      ),
    ),
    margin: EdgeInsets.symmetric(vertical: 16),

    elevation: 0,
    backgroundColor: Colors.transparent,
    behavior: SnackBarBehavior.floating,
    );
    
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    
  }
}