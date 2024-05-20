import 'package:flutter/material.dart';

class SimpleTextStyle {
  const SimpleTextStyle._();


static TextTheme mainTextTheme = TextTheme(
  displayLarge: SimpleTextStyle.displayLarge(),
  displayMedium:SimpleTextStyle.displayMedium() ,
  displaySmall: SimpleTextStyle.displaySmall(),
  titleSmall: SimpleTextStyle.titleSmallLight(),
);

  static TextStyle _style({
    double fontSize = 14,
    FontWeight? fontWeight = FontWeight.w400,
    double letterSpacing = 0.0,
    TextDecoration? decoration,
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      decoration: decoration,
      color: color,
      height: height,
    );
  }
  
  static TextStyle displayLarge({
    Color? color,
    FontWeight? fontWeight = FontWeight.w800,
    TextDecoration? decoration,
  }) {
    return _style(
      fontSize: 42,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }
  
  static TextStyle displayMedium({
      Color? color,
    FontWeight? fontWeight = FontWeight.w300,
    TextDecoration? decoration,
  }) {
     return _style(
      fontSize: 34,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
     );
  }

  static TextStyle displaySmall({
      Color? color,
    FontWeight? fontWeight = FontWeight.w400,
    TextDecoration? decoration,
  }) {
     return _style(
      fontSize: 28,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
     );
  }

  static TextStyle headline({
 Color? color,
    FontWeight? fontWeight = FontWeight.w500,
    TextDecoration? decoration,
  }){
    return _style(
      fontSize: 22,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  } 


 static TextStyle titleLarge({
 Color? color,
    FontWeight? fontWeight = FontWeight.w500,
    TextDecoration? decoration,
  }){
    return _style(
      fontSize: 18,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  } 
  
  static TextStyle titleMedium({
 Color? color,
    FontWeight? fontWeight = FontWeight.w500,
    TextDecoration? decoration,
  }){
    return _style(
      fontSize: 16,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  } 


 
  static TextStyle titleSmall({
 Color? color,
    FontWeight? fontWeight = FontWeight.w400,
    TextDecoration? decoration,
  }){
    return _style(
      fontSize: 12,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }  

static TextStyle titleSmallLight({
 Color? color,
    FontWeight? fontWeight = FontWeight.w300,
    TextDecoration? decoration,
  }){
    return _style(
      fontSize: 12,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }
  static TextStyle tiny({
 Color? color,
    FontWeight? fontWeight = FontWeight.w400,
    TextDecoration? decoration,
  }){
    return _style(
      fontSize: 8,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

}

