import 'package:app_pattern_getx/app/routes/app_routes.dart';
import 'package:app_pattern_getx/app/routes/app_views.dart';
import 'package:app_pattern_getx/core/utils/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  DependencyInjection.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.SPLASH,
      getPages: AppViews.views,
    );
  }
}
