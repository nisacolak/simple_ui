import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        SimpleAppBar(appBarText: "Appbar View", showBackArrow: true),
        SearchAppBar(taptoProfile: (){}, taptoBack: (){})
      ],
      )
      
    );
  }
}