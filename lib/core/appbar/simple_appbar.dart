import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/textstyle.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String appBarText;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final bool showBackArrow;
  const SimpleAppBar({super.key, required this.appBarText, this.leadingIcon, this.actions, this.leadingOnPressed, required this.showBackArrow});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: AppBar(automaticallyImplyLeading: false,
    leading: showBackArrow 
    ? IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back))
    : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null ,
    title: Text(appBarText),
    actions: actions,
    ),);
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
}