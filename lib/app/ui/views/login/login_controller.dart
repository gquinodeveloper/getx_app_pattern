import 'package:app_pattern_getx/app/data/models/request/request_auth_model.dart';
import 'package:app_pattern_getx/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    doAuth();
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

  //Functions
  void doAuth() async {
    try {
      final response = await _userRepository.postAuth(
        RequestAuthModel(
          email: "gqcrispin@gmail.com",
          password: "123456",
        ),
      );

      print("Token: ${response.requestToken}");
      print("Token: ${response.idUser}");
    } catch (error) {
      print("Error => $error");
    }
  }
}
