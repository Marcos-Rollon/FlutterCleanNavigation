import 'pages/help.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/settings.dart';
import 'pages/splash.dart';

class PageFactory {
  static HomePage homePage({HomePageDelegate delegate}) {
    return HomePage(
      delegate: delegate,
    );
  }

  static SettingsPage settingsPage() {
    return SettingsPage();
  }

  static LoginPage loginPage({LoginPageDelegate delegate}) {
    return LoginPage(
      delegate: delegate,
    );
  }

  static HelpPage helpPage(String data) {
    return HelpPage(data);
  }

  static SplashPage splashPage() {
    return SplashPage();
  }
}
