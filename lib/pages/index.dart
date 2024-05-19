import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_parcial/components/index/missing_user.dart';
import 'package:login_parcial/components/index/user_profile.dart';
import 'package:login_parcial/context/user_context.dart';

class Index extends ConsumerWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userLogged = ref.read(userLoggedProvider);

    if (userLogged == null) return const MissingUser();
    return const UserProfile();
  }
}
