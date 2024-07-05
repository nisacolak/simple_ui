import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/textstyle.dart';

class TypographyView extends StatelessWidget {
   TypographyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => _styles[index],
        itemCount: _styles.length,
      ),
    );
  }

  final _styles =[
    Text("Title", style: SimpleTextStyle.displayLarge(),),
    Text("Subtitle", style: SimpleTextStyle.displayMedium(),)
  ];
}