import 'package:flutter/material.dart';

class AnimatedContainers extends StatefulWidget {
  const AnimatedContainers({
    Key? key,
    required this.duration,
    required this.color,
  }) : super(key: key);

  final int duration;
  final Color color;

  @override
  State<AnimatedContainers> createState() => _AnimatedContainersState();
}

class _AnimatedContainersState extends State<AnimatedContainers>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration),
    );

    final curveAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.slowMiddle,
    );

    animation = Tween<double>(begin: 0, end: 200).animate(curveAnimation)
      ..addListener(() {
        setState(() {});
      });
    animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(10),
      ),
      height: animation.value,
    );
  }
}
