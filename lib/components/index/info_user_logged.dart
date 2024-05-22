import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_parcial/context/user_context.dart';

class InfoUserLogged extends ConsumerWidget {
  const InfoUserLogged({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final user = ref.read(userLoggedProvider)!;

    return Container(
      constraints: const BoxConstraints(maxWidth: 250),
      decoration: const BoxDecoration(
        // color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            color: Colors.black26,
            spreadRadius: 3,
          )
        ],
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
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("NOMBRE: "), Text(user.name)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("ID: "), Text(user.id)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("ROLE: "), Text(user.role)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("EMAIL: "), Text(user.email)],
              ),
            ],
          )
        ],
      ),
    );
  }
}
