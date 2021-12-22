import 'package:flutter/material.dart';
import 'package:music_app/theme/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.obscureText,
  }) : super(key: key);

  final String hintText;
  final String labelText;
  final IconData icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 5,
          color: AppColors.darkTheme,
          child: TextFormField(
            // keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: labelText,
              prefixIcon: Icon(
                icon,
                color: AppColors.white,
              ),
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            obscureText: obscureText,
          ),
        ),
      ),
    );
    /* Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        children: [
          const Icon(Icons.person),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Enter your name',
              labelStyle: const TextStyle(
                color: AppColors.white,
                fontSize: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    ) */
    ;
  }
}
