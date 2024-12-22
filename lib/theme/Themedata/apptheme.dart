import 'package:flutter/material.dart';
import 'package:praticetest/theme/Themedata/texttheme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.light(
          surface: const Color.fromARGB(255, 244, 240, 240),
          primary: Colors.black,
          secondary: Colors.white,
          inversePrimary: Colors.grey.shade900));
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.light(
          surface: Colors.black,
          primary: Colors.white,
          secondary: Colors.black,
          inversePrimary: Colors.grey.shade900));
}

extension ThemeExtras on BuildContext {
  Color get backColor => Theme.of(this).colorScheme.surface;
  Color get TextColor => Theme.of(this).colorScheme.primary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
}
