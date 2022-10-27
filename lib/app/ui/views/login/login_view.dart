import 'package:app_pattern_getx/app/ui/views/login/login_controller.dart';
import 'package:app_pattern_getx/app/ui/views/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
const LoginView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetBuilder<LoginController>(
      builder: (controller)=> Scaffold(
      ),
    );
  }
}