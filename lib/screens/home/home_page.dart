import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:music_app/app/app_controller.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (_authController) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Hello ${_authController.displayName}!',
            ),
          ),
          body: Container(),
        );
      },
    );
  }
}
