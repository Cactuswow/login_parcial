import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_parcial/context/color_context.dart';
import 'package:login_parcial/context/user_context.dart';

class InfoUserLogged extends ConsumerWidget {
  const InfoUserLogged({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userLoggedProvider)!;
    final colorMode = ref.watch(darkModeProvider);

    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      decoration: const BoxDecoration(
        // color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9999),
            child: Image.network(
              user.imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Image(
                image: AssetImage("floopa.jpg"),
                width: 100,
                height: 100,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("NOMBRE: "), Text(user.name)],
              ),
              const SizedBox(
                width: 10,
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("ID: "), Text(user.id)],
              ),
              const SizedBox(
                width: 10,
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("ROL: "), Text(user.role)],
              ),
              const SizedBox(
                width: 10,
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("EMAIL: "),
                  Text(
                    user.email,
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {
                    ref.read(darkModeProvider.notifier).update((s) => !s);
                  },
                  icon: Icon(getIconColorMode(colorMode)))
            ],
          )
        ],
      ),
    );
  }
}
