import 'package:flutter/material.dart';
import 'package:login_parcial/components/register/register_body.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: mediaQuery.width,
        height: mediaQuery.height,
        color: const Color.fromRGBO(18, 31, 47, 1),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: RegisterBody(),
          ),
        ),
      ),
    );
  }
}
