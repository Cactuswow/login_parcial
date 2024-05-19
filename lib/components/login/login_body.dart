import 'package:flutter/material.dart';
import 'package:login_parcial/components/login/form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
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

    return loginContainer(
      children: [
        const Expanded(
          flex: 3,
          child: FormLogin(),
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
