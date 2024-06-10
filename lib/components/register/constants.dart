String? nameValidator(dynamic value) {
  if (value == null || value.isEmpty) {
    return 'Por favor ingrese un nombre válido';
  }

  return null;
}
