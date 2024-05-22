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
      height: 450,
      constraints: const BoxConstraints(maxWidth: 900),
      child: SingleChildScrollView(
        child: Column(
          children: usersSorted
              .map(
                (e) => Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: e.role == "admin"
                            ? Colors.blue
                            : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                          right: 15,
                          left: 15,
                          top: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
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
                                Text(
                                  e.name,
                                  style: const TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                            Text(e.role),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                      height: 20,
                    )
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
