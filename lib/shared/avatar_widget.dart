import 'package:flutter/material.dart';

import '../theme/color.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70),
        ),
        child: CircleAvatar(
          radius: 70,
          backgroundColor: AppColors.darkTheme.withOpacity(0.95),
          child: const Icon(
            Icons.person,
            color: AppColors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}
