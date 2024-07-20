import 'package:flutter/material.dart';

class SimpleCircleButton extends StatelessWidget {
  final VoidCallback onTap;
  final double? height;
  final Widget? child;
  final Color? backgroundColor;
  final Color? borderColor;
  final ImageProvider? image;

  const SimpleCircleButton({super.key, required this.onTap, this.image, this.backgroundColor, this.child, this.borderColor, this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        
        height: height ?? MediaQuery.of(context).size.width * .15 ,
        decoration: BoxDecoration(
          border: borderColor != null ? Border.all(color: borderColor!, width: 3) : null,
        
        color: backgroundColor ,shape: BoxShape.circle,
        image: image != null ? DecorationImage(image: image!) : null,
        
        
        ),
        child: child,
        
      
      
      ),
    );
  }
}