import 'package:flutter/material.dart';
import '../theme/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.obscureText,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  final String hintText;
  final String labelText;
  final IconData icon;
  final bool obscureText;
  final FormFieldValidator<String> validator;
  final TextEditingController controller;

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
            validator: validator,
            controller: controller,
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
  }
}
