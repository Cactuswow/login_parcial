import 'package:go_router/go_router.dart';
import 'package:login_parcial/pages/index.dart';
import 'package:login_parcial/pages/login.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: "/",
      name: "index",
      builder: (context, state) => const Index(),
    ),
    GoRoute(
      path: "/login",
      name: "login",
      builder: (context, state) => const Login(),
    ),
  ],
);
