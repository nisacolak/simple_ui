import 'package:example/pages/card_view.dart';
import 'package:example/pages/menu_view.dart';
import 'package:example/pages/typography.dart';
import 'package:flutter/material.dart';
import 'package:simple_ui/core/navigation/simple_nav_rail.dart';
import 'package:simple_ui/core/styles/color.dart';

class NavigationView extends StatelessWidget {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          SimpleNavRail(
           
        pages: [
          
          CardsView(),
          TypographyView(),
          CardsView()
          
        ], selectionColor: SimpleColors.primary, destinations: [ 
          
         NavigationRailDestination(icon: Icon(Icons.person), label: Text("")),
         NavigationRailDestination(icon: Icon(Icons.person), label: Text("")),
         NavigationRailDestination(icon: Icon(Icons.person), label: Text("")),
        ],),
    
    );
  }
}