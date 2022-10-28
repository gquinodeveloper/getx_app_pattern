import 'dart:convert';

import 'package:app_pattern_getx/app/data/models/response/response_auth_model.dart';
import 'package:app_pattern_getx/app/data/models/response/response_information_model.dart';
import 'package:app_pattern_getx/app/data/repositories/user_repository.dart';
import 'package:app_pattern_getx/app/routes/app_routes.dart';
import 'package:app_pattern_getx/app/services/local_storage_service.dart';
import 'package:app_pattern_getx/core/utils/keys.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    _initialize();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //Instances
  final _userRepository = Get.find<UserRepository>();
  ResponseInformationModel informationModel = ResponseInformationModel(); 

  //Variables
  RxString fullName = RxString("");

  //Functions
  void _initialize() async {
    String value = await LocalStorageService.get(Keys.KeyUserAuth);
    final responseAuthModel = ResponseAuthModel.fromJson(json.decode(value));

    informationModel = await _userRepository.getInformation(
      token: responseAuthModel.requestToken,
      idUser: responseAuthModel.idUser,
    );
    
    fullName.value = "Bienvenido: ${informationModel.information?[0].name}";
  }

  void signOut(){
    Get.offNamed(AppRoutes.LOGIN);
  }
}
