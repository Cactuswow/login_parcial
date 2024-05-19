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

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: "Ok",
        onPressed: () {},
      ),
    ),
  );
}

User? getUserLogged(String userEmail, String userPassword, List<User> users) {
  final usersFiltered = users.where(
      (user) => user.email == userEmail && user.password == user.password);

  if (usersFiltered.isEmpty) return null;

  return usersFiltered.first;
}
