import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_test/pages/splash.dart';
import './composer.dart';
import 'get_router.dart';
import 'router_vanilla.dart';

void main() {
  Composer mainComposer = Get.put(Composer());
  mainComposer.router = GetRouter();
  runApp( GetMaterialApp(
      title: 'Testing navigation',
      home: SplashPage(),
    ););

  //Router.composer = mainComposer;
  // runApp(
  //   GetMaterialApp(
  //     title: 'Testing navigation',
  //     onGenerateRoute: RouterVanilla.generateRoute,
  //     navigatorKey: RouterVanilla.navigatorKey,
  //     initialRoute: '/splash',
  //   ),
  // );
}
