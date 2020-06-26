import 'package:navigation_test/router.dart';
import 'pages/home.dart';
import 'pages/login.dart';

class Composer with HomePageDelegate, LoginPageDelegate {
  Router router;

  void start() async {
    bool isLoggedIn = await Future.delayed(Duration(seconds: 3), () => true);
    if (isLoggedIn)
      router.goToHome();
    else
      router.goToLogin();
  }

  @override
  void didLogout() {
    print("Did logout indeed");
    router.goToLogin();
  }

  @override
  void didLogin() {
    print("So you want to login right? i see...");
    router.goToHome();
  }
}
