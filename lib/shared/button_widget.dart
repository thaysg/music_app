import 'package:flutter/material.dart';
import '../theme/color.dart';
import '../theme/text_style.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.onTap, required this.title})
      : super(key: key);
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: SizedBox(
        height: 55,
        width: MediaQuery.of(context).size.width * 0.7,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            primary: AppColors.primary,
          ),
          child: Center(
            child: Text(
              title,
              style: AppTextStyles.textButonLogin,
            ),
          ),
          onPressed: onTap,
        ),
      ),
    );
  }
}
