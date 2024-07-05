import 'package:flutter/material.dart';
import 'package:simple_ui/core/menu/simple_dropdown.dart';
import 'package:simple_ui/simple_ui.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SimpleDropDown(),
          SimpleDrawer(child: Text('')),
          
        ],
      ),
    );
  }
}