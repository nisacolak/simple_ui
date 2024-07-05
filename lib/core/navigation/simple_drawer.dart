import 'package:flutter/material.dart';

class SimpleDrawer extends StatelessWidget {
  final Widget child;
  const SimpleDrawer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
      child: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 15, right: 8),
          child: SingleChildScrollView(child: child),
        ),
      ),
    );
  }
}
