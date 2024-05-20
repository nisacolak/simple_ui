import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/color.dart';

class SimpleSearchContainer extends StatelessWidget {
  final Widget? child;
  final TextEditingController? controller;
  final String hintText;
  final double width;
  final double height;

  const SimpleSearchContainer({
    Key? key,
   this.controller,
    required this.hintText,
    required this.width,
    required this.height,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: SimpleColors.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(28)),
      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 15),
            border: InputBorder.none,
            hintStyle: TextStyle(color: SimpleColors.primary, fontSize: 16),
            hintText: hintText,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                Icons.search_sharp,
                color: SimpleColors.primary
              ),
            ),
            suffixIcon: child),
      ),
    );
  }
}
