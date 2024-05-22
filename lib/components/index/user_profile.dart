import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_parcial/components/index/info_other_users.dart';
import 'package:login_parcial/components/index/info_user_logged.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              InfoUserLogged(),
              SizedBox(
                height: 50,
                width: 50,
              ),
              InfoOtherUsers()
            ],
          ),
        ),
      ),
    );
  }
}
