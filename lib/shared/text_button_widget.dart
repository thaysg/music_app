import 'package:flutter/material.dart';
import 'package:music_app/theme/color.dart';
import 'package:music_app/theme/text_style.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.onTap,
    required this.text,
    required this.subtitle,
  }) : super(key: key);
  final VoidCallback onTap;
  final String text;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        elevation: 5,
        shadowColor: Colors.transparent.withOpacity(0.1),
        splashFactory: InkRipple.splashFactory,
      ),
      onPressed: onTap,
      child: Center(
        child: Text.rich(
          TextSpan(
            text: text,
            style: AppTextStyles.textSpanConta.copyWith(
              color: AppColors.white,
            ),
            children: [
              TextSpan(
                text: subtitle,
                style: AppTextStyles.textSpanButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
