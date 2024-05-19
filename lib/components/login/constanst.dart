String? userEmailValidator(dynamic value) {
  bool condition = value == null ||
      value.isEmpty ||
      !RegExp(r'\S+@\S+\.\S+').hasMatch(value);

  if (condition) {
    return 'Por favor un correo válido';
  }

  return null;
}

String? passwordValidator(dynamic value) {
  if (value == null || value.isEmpty) {
    return 'Ingresa tu contraseña';
  }
  return null;
}