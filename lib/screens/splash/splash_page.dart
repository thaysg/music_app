import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:music_app/screens/splash/widgets/animation_widget.dart';
import './splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) {
        return Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: AnimationWidget(),
            ),
          ),
        );
      },
    );
  }
}
