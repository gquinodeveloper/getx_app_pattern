import 'package:app_pattern_getx/app/routes/app_routes.dart';
import 'package:app_pattern_getx/app/ui/views/login/login_binding.dart';
import 'package:app_pattern_getx/app/ui/views/login/login_view.dart';
import 'package:app_pattern_getx/app/ui/views/splash/splash_binding.dart';
import 'package:app_pattern_getx/app/ui/views/splash/splash_view.dart';
import 'package:get/get.dart';

abstract class AppViews {
  static final views = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: ()=> const LoginView(), 
      binding: LoginBinding()
    ),
    GetPage(
      name: AppRoutes.SPLASH,
      page: ()=> const SplashView(), 
      binding: SplashBinding()
    ),
  ];
}