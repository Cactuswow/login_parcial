import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextEditingController controller;
  final dynamic validator;
  const InputField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromARGB(255, 64, 70, 104)),
          borderRadius: BorderRadius.circular(5.5),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 64, 70, 104),
          ),
        ),
        prefixIcon: Icon(
          icon,
          color: const Color.fromARGB(255, 64, 70, 104),
        ),
        filled: true,
        fillColor: const Color.fromARGB(20, 64, 70, 104),
        labelText: label,
      ),
      controller: controller,
      validator: validator,
    );
  }
}
