import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_parcial/components/login/form.dart';
import 'package:login_parcial/context/user_context.dart';

class LoginBody extends ConsumerWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.of(context).size;

    Widget loginContainer({children}) {
      final container = mediaQuery.width <= 760
          ? Column(
              children: children,
              mainAxisSize: MainAxisSize.min,
            )
          : Row(children: children);

      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              color: Colors.black26,
              spreadRadius: 3,
            )
          ],
        ),
        constraints: const BoxConstraints(maxWidth: 1200, maxHeight: 700),
        clipBehavior: Clip.hardEdge,
        child: container,
      );
    }

    Widget getLoader() {
      final isFetching = ref.watch(isFetchingUsersProvider);

      if (!isFetching) return const SizedBox();

      return const Positioned(
        bottom: 30,
        right: 30,
        child: CircularProgressIndicator(),
      );
    }

    return loginContainer(
      children: [
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              const FormLogin(),
              getLoader(),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("loginImage.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
