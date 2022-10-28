import 'dart:convert';

import 'package:app_pattern_getx/app/data/models/request/request_auth_model.dart';
import 'package:app_pattern_getx/app/data/repositories/user_repository.dart';
import 'package:app_pattern_getx/app/routes/app_routes.dart';
import 'package:app_pattern_getx/app/services/local_storage_service.dart';
import 'package:app_pattern_getx/core/utils/keys.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    //doAuth();
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Instances
  final _userRepository = Get.find<UserRepository>();

  //Variables
  String email = "";
  String password = "";

  //Functions
  void doAuth() async {
    try {
      final response = await _userRepository.postAuth(
        RequestAuthModel(
          email: email, //"gqcrispin@gmail.com",
          password: password, // "123456",
        ),
      );

      if (response.requestToken.isNotEmpty) {
        print("String Json: ${json.encode(response.toJson())}");
        await LocalStorageService.set(
          key: Keys.KeyUserAuth,
          value: json.encode(response.toJson()),
        );
        Get.offNamed(AppRoutes.HOME);
      }
    } catch (error) {
      print("Error => $error");
    }
  }
}
