import 'package:flutter/material.dart';
import 'package:login_parcial/components/login/form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    Widget loginContainer({children}) {
      final container = mediaQuery.width <= 500
          ? Column(
              children: children,
              mainAxisSize: MainAxisSize.min,
            )
          : Row(children: children);

      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        clipBehavior: Clip.hardEdge,
        child: container,
      );
    }

    return loginContainer(
      children: [
        const FormLogin(),
        const Image(
          image: AssetImage("loginImage.jpg"),
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
