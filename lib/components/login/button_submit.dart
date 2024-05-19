import 'package:flutter/material.dart';

class ButtonSubmit extends StatelessWidget {
  final dynamic action;
  const ButtonSubmit({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.only(
            bottom: 17,
            top: 17,
            left: 50,
            right: 50,
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(Colors.amber),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      child: const Text(
        "Ingresar",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
