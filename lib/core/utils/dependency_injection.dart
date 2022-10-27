import 'package:app_pattern_getx/app/data/providers/user_provider.dart';
import 'package:app_pattern_getx/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static initialize(){
    //Providers
    Get.put<UserProvider>(UserProvider());

    //Repositories
    Get.put<UserRepository>(UserRepository());
  }
}