import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() {
    return getDarkmode();
  }

  ThemeData getLightTheme() {
    return ThemeData();
  }

  ThemeData getDarkmode() {
    return ThemeData(brightness: Brightness.dark);
  }
}
