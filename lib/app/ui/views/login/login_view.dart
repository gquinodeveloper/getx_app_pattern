import 'package:app_pattern_getx/app/ui/components/bottom/btn_primary.dart';
import 'package:app_pattern_getx/app/ui/views/login/login_controller.dart';
import 'package:app_pattern_getx/app/ui/views/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  icon: Icon(Icons.email_outlined),
                ),
                onChanged: (value) {
                  controller.email = value;
                },
              ),
              const SizedBox(height: 20.0),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  icon: Icon(Icons.lock_outline),
                ),
                onChanged: (value) {
                  controller.password = value;
                },
              ),
              const SizedBox(height: 40.0),
              BtnPrimary(
                text: "Iniciar Sesión",
                onTap: controller.doAuth,
              ),
              const SizedBox(height: 40.0),
              BtnPrimary(
                text: "Iniciar sesión con Google",
                onTap: () {
                  print("Iniciar Sesión Google");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
