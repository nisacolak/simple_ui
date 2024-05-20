import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_ui/core/styles/color.dart';
import 'package:simple_ui/core/styles/textstyle.dart';

class SimpleTheme {
  const SimpleTheme._();

  static ThemeData lightTheme() => ThemeData(
        primaryColor: SimpleColors.primary,
        primarySwatch: SimpleColors.primarySwatch,
        textTheme: SimpleTextStyle.mainTextTheme,
        brightness: Brightness.light,
        useMaterial3: true,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: SimpleColors.primary,
          onPrimary: SimpleColors.neutral[10]!,
          secondary: SimpleColors.secondary,
          onSecondary: Colors.black,
          error: SimpleColors.error,
          onError: SimpleColors.neutral[10]!,
          background: SimpleColors.neutral[10]!,
          onBackground: Colors.black,
          surface: SimpleColors.neutral[20]!,
          onSurface: SimpleColors.neutral[80]!,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: SimpleColors.primary,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
        ),
      );

  static ThemeData darkTheme() => ThemeData(
        primaryColor: SimpleColors.primary,
        primarySwatch: SimpleColors.primarySwatch,
        //textTheme: SimpleTextStyle.darkTextTheme,
        brightness: Brightness.dark,
        useMaterial3: true,
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: SimpleColors.primary,
          onPrimary: SimpleColors.neutral[10]!,
          secondary: SimpleColors.secondary,
          onSecondary: Colors.black,
          error: SimpleColors.error,
          onError: SimpleColors.neutral[10]!,
          background: SimpleColors.neutral[10]!,
          onBackground: Colors.black,
          surface: SimpleColors.neutral[20]!,
          onSurface: SimpleColors.neutral[80]!,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: SimpleColors.primary,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
        ),
      );
}
