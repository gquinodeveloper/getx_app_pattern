import 'package:app_pattern_getx/app/ui/components/bottom/btn_primary.dart';
import 'package:app_pattern_getx/app/ui/views/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(()=>Text(
                "${controller.fullName}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),),
              SizedBox(height: 40.0),
              BtnPrimary(
                text: "Cerrar Sesión",
                onTap: controller.signOut,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
