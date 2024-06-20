import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/textstyle.dart';



class CustomAlertDialog extends StatelessWidget {

  final String title;
  final String description;
  final Function onPressed;
  final String closeButtonText;
  final String actionButtonText;
CustomAlertDialog({super.key, required this.title, required this.description, required this.onPressed, required this.closeButtonText, required this.actionButtonText});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
      title: Text(title, style: SimpleTextStyle.titleMedium(),),
      titlePadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      content: 
      SizedBox(
        height: MediaQuery.of(context).size.height * .03,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(description,
             maxLines: 1,
             overflow: TextOverflow.ellipsis,
             style: SimpleTextStyle.titleSmall(),),
          ],
        ),
      ),
      
     
      actions: [
        Row(
   
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: (){

            }, child: Text(actionButtonText),),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text(closeButtonText),),
          ],
        )
      ],
      
      actionsPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      scrollable: true,
      );
  }
}