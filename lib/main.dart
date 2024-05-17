import 'package:flutter/material.dart';
import 'package:login_parcial/routes/index.routes.dart';
import 'package:login_parcial/styles/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      routerConfig: appRouter,
      title: "Login Kactuswow",
    );
  }
}
