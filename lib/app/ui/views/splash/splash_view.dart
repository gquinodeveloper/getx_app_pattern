import 'package:app_pattern_getx/app/ui/views/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
const SplashView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetBuilder<SplashController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.cyan,
      ),
    );
  }
}