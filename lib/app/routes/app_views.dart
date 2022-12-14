import 'package:app_pattern_getx/app/routes/app_routes.dart';
import 'package:app_pattern_getx/app/ui/views/home/home_binding.dart';
import 'package:app_pattern_getx/app/ui/views/home/home_view.dart';
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
    GetPage(
      name: AppRoutes.HOME,
      page: ()=> const HomeView(), 
      binding: HomeBinding()
    ),
  ];
}