import 'package:flutter/material.dart';
import 'package:login_parcial/components/login/button_submit.dart';
import 'package:login_parcial/components/login/input_field.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 43, 51, 83),
      child: const Form(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: 20,
            top: 15,
            left: 30,
            right: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text("Ingresa tu correo y contraseña"),
              SizedBox(
                height: 20,
                width: 20,
              ),
              InputField(
                label: "Ingresa tu correo",
                icon: Icons.person,
              ),
              SizedBox(height: 15),
              InputField(
                label: "Ingresa tu contraseña",
                icon: Icons.key,
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ButtonSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}
