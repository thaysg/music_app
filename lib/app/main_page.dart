import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../screens/home/home_page.dart';
import '../screens/splash/splash_page.dart';
import 'app_controller.dart';

class MainPage extends GetView<AppController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AppController>(
        builder: (_) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: _.isSignedIn.value ? const HomePage() : SplashPage(),
            ),
          );
        },
      ),
    );
  }
}
