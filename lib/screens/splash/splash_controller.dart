import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/routes/app_pages.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void onInit() {
    //Equivalente ao initState do SteteFull
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    final curveAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.slowMiddle,
    );

    animation = Tween<double>(begin: 0, end: 200).animate(curveAnimation)
      ..addListener(() => update());
    animationController.repeat(reverse: true);
  }

  void dispose() {
    animationController.dispose();
    super.dispose();
    Get.toNamed(Routes.home);
  }
}
