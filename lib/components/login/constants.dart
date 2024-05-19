import 'package:flutter/material.dart';
import 'package:login_parcial/models/user.dart';

String? userEmailValidator(dynamic value) {
  bool condition = value == null ||
      value.isEmpty ||
      !RegExp(r'\S+@\S+\.\S+').hasMatch(value);

  if (condition) {
    return 'Por favor ingrese un correo válido';
  }

  return null;
}

String? passwordValidator(dynamic value) {
  if (value == null || value.isEmpty) {
    return 'Por favor ingrese una contraseña válida';
  }

  return null;
}

void showSnackBar(context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text('Formulario hecho'),
      action: SnackBarAction(
        label: "Ok",
        onPressed: () {},
      ),
    ),
  );
}

User getUserLogged(String userEmail, String userPassword, List<User> users) {
  return users
      .where(
          (user) => user.email == userEmail && user.password == user.password)
      .first;
}
