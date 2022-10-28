import 'package:app_pattern_getx/app/data/providers/user_provider.dart';
import 'package:app_pattern_getx/app/data/repositories/user_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static initialize(){
    //Storage
    Get.put<FlutterSecureStorage>(const FlutterSecureStorage());

    //Providers
    Get.put<UserProvider>(UserProvider());

    //Repositories
    Get.put<UserRepository>(UserRepository());
  }
}