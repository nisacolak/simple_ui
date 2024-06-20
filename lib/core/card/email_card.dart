import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/color.dart';

class EmailCard extends StatelessWidget {
  final String email;
  final String imagePath;
  
  const EmailCard({super.key, required this.email,  required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
    
      width: MediaQuery.of(context).size.width * .7,
      height: MediaQuery.of(context).size.height * .06,
padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: SimpleColors.primaryBorder, borderRadius: BorderRadius.circular(12)),
      child: Row(children: [
        CircleAvatar(backgroundImage:  NetworkImage(imagePath),),
         Container(
          padding: EdgeInsets.only(left: 10),
           child: Text(email),
         ),
      ],),);
  }
}