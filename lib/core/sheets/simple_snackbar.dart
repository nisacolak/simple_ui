import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/color.dart';
import 'package:simple_ui/core/styles/textstyle.dart';

class WarningSnackBar{

  static show (BuildContext context, {
    String message = 'snackbar message',
    
    Duration duration = const Duration(seconds: 3),
    

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
                
                Text( message,style:  SimpleTextStyle.titleSmall(color: Colors.black)),
              ],
            ),
          ),
     )])));
       
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    
  }
}