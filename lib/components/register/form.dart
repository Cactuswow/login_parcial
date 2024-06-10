import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:login_parcial/components/login/button_submit.dart';
import 'package:login_parcial/components/login/constants.dart';
import 'package:login_parcial/components/login/input_field.dart';
import 'package:login_parcial/components/login/password_field.dart';
import 'package:login_parcial/context/user_context.dart';
import 'package:login_parcial/components/register/constants.dart';

class FormRegister extends ConsumerStatefulWidget {
  const FormRegister({super.key});

  @override
  ConsumerState<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends ConsumerState<FormRegister> {
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    userEmailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    super.dispose();
  }

  void changeStateFetch(bool isFetching) {
    ref.read(isFetchingUsersProvider.notifier).update((state) => isFetching);
  }

  @override
  Widget build(BuildContext context) {
    void handleForm() {
      try {
        final dynamic data = {
          "name": userNameController.text,
          "password": passwordController.text,
          "email": userEmailController.text
        };

        postUser(data);
        showSnackBar(context, 'Registro completo');
        context.push("/login");
      } catch (e) {
        showSnackBar(context, 'Correo en uso');
      }
    }

    void save() async {
      changeStateFetch(true);
      handleForm();
      changeStateFetch(false);
    }

    return Container(
      color: const Color.fromRGBO(43, 51, 83, 1),
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
                "REGÍSTRATE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Ingresa tu correo y contraseña",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              InputField(
                label: "Ingresa tu nombre",
                icon: Icons.add_card,
                controller: userNameController,
                validator: nameValidator,
              ),
              const SizedBox(height: 15),
              InputField(
                label: "Ingresa tu correo",
                icon: Icons.person,
                controller: userEmailController,
                validator: userEmailValidator,
              ),
              const SizedBox(height: 15),
              PasswordField(
                label: "Ingresa tu contraseña",
                icon: Icons.key,
                controller: passwordController,
                validator: passwordValidator,
              ),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              Row(
                children: [
                  ButtonSubmit(action: save),
                  const SizedBox(width: 15),
                  TextButton(
                    child: const Text("Inicia sesión"),
                    onPressed: () {
                      context.push("/login");
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
