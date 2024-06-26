import 'package:flutter/material.dart';

class SimpleColors {
  const SimpleColors._();

  static const Color primary = Color(0xFF303F9F);
  static const Color primarySurface = Color(0xFFF5F5FA);
  static const Color primaryFocus = Color(0xFFD6D9EC);
  static const Color primaryBorder = Color(0xFFBABFDF);
  static const Color primaryHover = Color(0xFF283584);
  static const Color primaryPressed = Color(0xFF182050);

  static const MaterialColor primarySwatch = MaterialColor(
    0xFF303F9F,
    <int, Color>{
      50: Color(0xFFf1f5fd),
      100: Color(0XFFdfe8fa),
      200: Color(0xFFc7d7f6),
      300: Color(0XFFa0bef0),
      400: Color(0XFF739be7),
      500: Color(0XFF5279df),
      600: Color(0XFF3d5dd3),
      700: Color(0XFF344bc1),
      800: Color(0xFF303F9F),
      900: Color(0XFF2b387d),
    },
  );

  static const MaterialColor neutral = MaterialColor(
    0xFFAEAEAE,
    {
      10: Color(0xFFD9D9D9),
      20: Color(0xFFDCDCDC),
      30: Color(0xFFD5D5D5),
      40: Color(0xFFC9C9C9),
      50: Color(0xFFAEAEAE),
      60: Color(0xFF8E8E8E),
      70: Color(0xFF696969),
      80: Color(0xFF535353),
      90: Color(0xFF393939),
      100: Color(0xFF090909),
    },
  );

  static const Color secondary = Colors.pink;
  static const Color secondarySurface = Color.fromARGB(255, 255, 243, 249);
  static const Color secondaryFocus = Color.fromARGB(255, 255, 205, 228);
  static const Color secondaryBorder = Color.fromARGB(255, 255, 7, 152);
  static const Color secondaryHover = Color.fromARGB(255, 213, 6, 109);
  static const Color secondaryPressed = Color.fromARGB(255, 128, 3, 72);
  static const Color errorSurface = Color(0xFFFDF4F4);
  static const Color errorBorder = Color(0xFFF3B5B8);
  static const Color error = Color(0xFFDA1E28);
  static const Color errorHover = Color(0xFFBF161F);
  static const Color errorPressed = Color(0xFF841017);
  static const Color successSurface = Color(0xFFF4F9F5);
  static const Color successBorder = Color(0xFFB3D5BD);
  static const Color success = Color(0xFF198038);
  static const Color successHover = Color(0xFF158035);
  static const Color successPressed = Color(0xFF105726);
  static const Color warningSurface = Color(0xFFFEFCF4);
  static const Color warningBorder = Color(0xFFFAEBB4);
  static const Color warning = Color(0xFFF1C21B);
  static const Color warningHover = Color(0xFFDAAD0F);
  static const Color warningPressed = Color(0xFF927410);
  static const Color infoSurface = Color(0xFFF2F6FD);
  static const Color infoBorder = Color(0xFFABC1EF);
  static const Color info = Color(0xFF0043CE);
  static const Color infoHover = Color(0xFF0840B4);
  static const Color infoPressed = Color(0xFF012A81);
}
