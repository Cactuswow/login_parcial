import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_parcial/context/user_context.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.read(userLoggedProvider);

    return Scaffold(
      body: Text(users?.name ?? "asad"),
    );
  }
}
