import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String label;
  final IconData icon;
  final TextEditingController controller;
  final dynamic validator;

  const PasswordField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    required this.validator,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isVisible,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            isVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
        ),
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
          widget.icon,
          color: const Color.fromARGB(255, 64, 70, 104),
        ),
        filled: true,
        fillColor: const Color.fromARGB(20, 64, 70, 104),
        labelText: widget.label,
        labelStyle: const TextStyle(color: Colors.grey),
      ),
      controller: widget.controller,
      validator: widget.validator,
      style: const TextStyle(color: Colors.white),
    );
  }
}
