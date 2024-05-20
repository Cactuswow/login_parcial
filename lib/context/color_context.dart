import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final darkModeProvider = StateProvider((ref) => true);

IconData getIconColorMode(bool colorMode) {
  return colorMode ? Icons.dark_mode : Icons.light_mode;
}
