import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:login_parcial/context/color_context.dart';

class MissingUser extends ConsumerWidget {
  const MissingUser({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Fake Store App"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(darkModeProvider.notifier).update((state) => !state);
            },
            icon: (() {
              final colorMode = ref.watch(darkModeProvider);
              final iconData = getIconColorMode(colorMode);
              return Icon(iconData);
            })(),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "401",
              style: TextStyle(
                fontSize: 92,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              ),
            ),
            const Text(
              "No te has registrado, por lo que no puedes acceder al servicio",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            FilledButton(
              child: const Text(
                "Volver al login",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                context.push("/login");
              },
            ),
          ],
        ),
      ),
    );
  }
}
