import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MissingUser extends StatelessWidget {
  const MissingUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NO LOGGED??"),
      ),
      body: OutlinedButton(
        child: const Text("click para auto banearse"),
        onPressed: () {
          context.push("/login");
        },
      ),
    );
  }
}
