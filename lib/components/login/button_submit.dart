import 'package:flutter/material.dart';

class ButtonSubmit extends StatelessWidget {
  const ButtonSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      
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
