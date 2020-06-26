import './page_factory.dart';
import 'package:flutter/material.dart';
import 'composer.dart';

class RouterVanilla {
  static final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  static Composer composer;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => WillPopScope(
                onWillPop: () async => false,
                child: PageFactory.homePage(delegate: composer)));
        break;
      case '/help':
        if (settings.arguments is String) {
          return MaterialPageRoute(
            builder: (_) => PageFactory.helpPage(settings.arguments),
          );
        } else {
          throw Exception(
              "Error, arguments should be String but are ${settings.arguments.runtimeType}");
        }
        break;
      case '/settings':
        return MaterialPageRoute(builder: (_) => PageFactory.settingsPage());
        break;
      case '/splash':
        return MaterialPageRoute(builder: (_) => PageFactory.splashPage());
        break;
      case '/login':
        return MaterialPageRoute(
          builder: (_) => WillPopScope(
              onWillPop: () async => false,
              child: PageFactory.loginPage(delegate: composer)),
        );
        break;
    }
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Center(
                child: Text("404 route not found"),
              ),
            ));
  }

  static void pushNamed(String name) {
    navigatorKey.currentState.pushNamed(name);
  }
}
