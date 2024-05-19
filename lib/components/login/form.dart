import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:login_parcial/components/login/button_submit.dart';
import 'package:login_parcial/components/login/constants.dart';
import 'package:login_parcial/components/login/input_field.dart';
import 'package:login_parcial/context/user_context.dart';

class FormLogin extends ConsumerStatefulWidget {
  const FormLogin({super.key});

  @override
  ConsumerState<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends ConsumerState<FormLogin> {
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    userEmailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  void getUsers() async {
    final users = ref.read(registeredUsersProvider);
    final newUsers = await getRegisteredUsersApi(users);
    ref.read(registeredUsersProvider.notifier).update((state) => newUsers);
  }

  @override
  Widget build(BuildContext context) {
    void save() {
      if (formKey.currentState!.validate()) {
        final users = ref.read(registeredUsersProvider);
        final user = getUserLogged(
          userEmailController.text,
          passwordController.text,
          users,
        );

        if (user != null) {
          ref.read(userLoggedProvider.notifier).update((state) => user);
          showSnackBar(context, '¡Bienvenido! ${user.name}');
          context.push("/");
          return;
        }

        showSnackBar(context, 'No se ha encontrado ninguna coincidencia');
      }
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
                  controller: userEmailController,
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
