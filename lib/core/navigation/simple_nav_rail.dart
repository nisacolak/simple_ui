import 'package:flutter/material.dart';

class SimpleNavRail extends StatefulWidget {

  final List<Widget> pages;
  final List<NavigationRailDestination> destinations;
  final Color selectionColor;

  
  const SimpleNavRail({super.key, required this.pages, required this.selectionColor, required this.destinations, });

  @override
  State<SimpleNavRail> createState() => _SimpleNavRailState();
}

class _SimpleNavRailState extends State<SimpleNavRail> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children:[ 
          NavigationRail(
            
          backgroundColor: widget.selectionColor,
          
          onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          selectedIndex: _selectedIndex, 
          destinations: widget.destinations,
          ),
          Expanded(
            child:  widget.pages[_selectedIndex],
            ),
          ]
      
      
      ),
    );
  }
}
