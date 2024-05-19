import 'package:flutter/material.dart';
import 'package:login_parcial/components/login/button_submit.dart';
import 'package:login_parcial/components/login/constanst.dart';
import 'package:login_parcial/components/login/input_field.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController userController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    void save() {
      if (formKey.currentState!.validate()) {
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
    }

    @override
    void dispose() {
      userController.dispose();
      passwordController.dispose();
      super.dispose();
    }

    return Container(
      color: const Color.fromARGB(255, 43, 51, 83),
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
            top: 15,
            left: 30,
            right: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const Text("Ingresa tu correo y contraseña"),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              InputField(
                  label: "Ingresa tu correo",
                  icon: Icons.person,
                  controller: userController,
                  validator: userEmailValidator),
              const SizedBox(height: 15),
              InputField(
                label: "Ingresa tu contraseña",
                icon: Icons.key,
                controller: passwordController,
                validator: passwordValidator,
              ),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              ButtonSubmit(action: save),
            ],
          ),
        ),
      ),
    );
  }
}
