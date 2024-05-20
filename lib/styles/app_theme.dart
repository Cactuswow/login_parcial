import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme(bool colorMode) {
    return colorMode ? getDarkmode() : getLightTheme();
  }

  ThemeData getLightTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
      ),
      filledButtonTheme: const FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.blue),
        ),
      ),
    );
  }

  ThemeData getDarkmode() {
    return ThemeData(
      brightness: Brightness.dark,
      filledButtonTheme: const FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.blue),
        ),
      ),
    );
  }
}
