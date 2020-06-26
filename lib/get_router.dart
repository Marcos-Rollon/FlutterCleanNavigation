import 'package:get/get.dart';
import 'package:navigation_test/pages/help.dart';
import 'package:navigation_test/pages/settings.dart';
import 'package:navigation_test/pages/splash.dart';
import 'package:navigation_test/router.dart';

import 'composer.dart';
import 'pages/home.dart';
import 'pages/login.dart';

class GetRouter extends Router {
  Composer composer = Get.find();

  @override
  void goToHome() {
    Get.offAll(HomePage(
      delegate: composer,
    ));
  }

  @override
  void goToLogin() {
    Get.to(LoginPage(
      delegate: composer,
    ));
  }

  @override
  void goToSettings() {
    Get.off(SettingsPage(), transition: Transition.rightToLeftWithFade);
  }

  @override
  void goToHelp(String parameter) {
    Get.off(HelpPage(parameter), transition: Transition.downToUp);
  }

  @override
  void goToSplash() {
    Get.offAll(SplashPage());
  }
}
