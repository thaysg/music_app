import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'widgets/animated_containers.dart';
import 'splash_controller.dart';

// ignore: must_be_immutable
class SplashPage extends GetView<SplashController> {
  SplashPage({Key? key}) : super(key: key);

  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.amber,
  ];

  List<int> duration = [
    900,
    700,
    600,
    800,
    500,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List<Widget>.generate(
                10,
                (index) => AnimatedContainers(
                  duration: duration[index % 5],
                  color: colors[index % 4],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
