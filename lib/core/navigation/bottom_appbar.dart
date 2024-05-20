 import 'package:flutter/material.dart';

class SimpleNavBar extends StatelessWidget {
  const SimpleNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
     shape: const CircularNotchedRectangle(),
    notchMargin: 4.0,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: Icon(Icons.menu), onPressed: () {},),
        IconButton(icon: Icon(Icons.search), onPressed: () {},),
      ],
    ),
        
      );
  }
}