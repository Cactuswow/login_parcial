import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_parcial/context/user_context.dart';

class InfoOtherUsers extends ConsumerWidget {
  const InfoOtherUsers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userLoggedProvider);
    final users = ref.read(registeredUsersProvider);
    final usersSorted =
        users.where((actualUser) => actualUser != user).toList();

    return Container(
      height: 600,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            color: Colors.black26,
            spreadRadius: 3,
          )
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: usersSorted
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(9999),
                        child: Image.network(
                          e.imageUrl,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Text(e.name)
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
