import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_test/composer.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Run initial setup on load
    Composer composer = Get.find();
    composer.start();
    // This widget only shows a sceren to look at while the app is doing initial setup
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
