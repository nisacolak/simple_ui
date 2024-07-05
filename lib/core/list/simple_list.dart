import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SimpleList extends StatelessWidget {

  final String? imageData;
  final Color tileColor;
  final Color? textColor;
  final Widget? trailing;
  final Color? trailingColor;
  final Widget? leading;
  final String title;
  final String subtitle;
  final VoidCallback? onPressed;
  final bool? value;
  final Function(bool?)? valueOnChanged;
  const SimpleList({super.key, this.onPressed,  this.trailing,  this.leading, this.value, this.valueOnChanged, required this.title, required this.subtitle, this.imageData, required this.tileColor, this.textColor, this.trailingColor});

  @override
  Widget build(BuildContext context) {
    return  
       Expanded(
         child: ListView(children: [         
                  Container( 
                      decoration: BoxDecoration(
                      color: tileColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                          child: ListTile(
                          leading: imageData != null 
                        ? CircleAvatar(backgroundImage: NetworkImage(imageData!),)
                        : Icon(Icons.account_circle_rounded, size: 40, color: Colors.white),
                          trailing: value != null ? Checkbox(value: value!, onChanged: valueOnChanged) : Icon(Icons.arrow_forward_ios, color: trailingColor ?? Colors.white),
                          title: Text(title, style: TextStyle(color: textColor ?? Colors.white ),),
                          subtitle: Text(subtitle, style: TextStyle(color: textColor ?? Colors.white ),),
                          onTap: onPressed,
                                 
                        ),
                    ),
                  ]
             ),
       );
    }
}