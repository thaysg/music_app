import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/screens/splash/splash_controller.dart';

class AnimationWidget extends StatelessWidget {
  AnimationWidget({Key? key}) : super(key: key);

  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.amber,
  ];

  List<int> duration = [
    1000,
    2000,
    3000,
    4000,
    5000,
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List<Widget>.generate(
        10,
        (index) => AnimatedContainer(
          decoration: BoxDecoration(
            color: colors[index % 5],
            borderRadius: BorderRadius.circular(10),
          ),
          duration: Duration(milliseconds: duration[index % 5]),
          width: 10,
          height: controller.animation.value,
        ),
      ),
    );
  }
}
