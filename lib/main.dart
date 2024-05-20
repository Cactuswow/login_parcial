import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_parcial/context/color_context.dart';
import 'package:login_parcial/routes/index.routes.dart';
import 'package:login_parcial/styles/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorMode = ref.watch(darkModeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(colorMode),
      routerConfig: appRouter,
      title: "Login Kactuswow",
    );
  }
}
