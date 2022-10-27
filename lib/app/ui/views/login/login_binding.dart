import 'package:app_pattern_getx/app/ui/views/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=> LoginController());
  }
}