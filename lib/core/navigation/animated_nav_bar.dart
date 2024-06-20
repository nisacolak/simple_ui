import 'package:flutter/material.dart';

typedef void NavChanged(int newPosition);

class SimpleNavBar extends StatefulWidget {
  final NavChanged navChanged;
  const SimpleNavBar({super.key, required this.navChanged});

  @override
  State<SimpleNavBar> createState() => _SimpleNavBarState();
}

class _SimpleNavBarState extends State<SimpleNavBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      
      ],
    );
  }
}