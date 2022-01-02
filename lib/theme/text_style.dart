import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'color.dart';

class AppTextStyles {
  static TextStyle titleLogin = const TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w700,
    fontSize: 23,
    color: AppColors.primary,
  );

  static TextStyle textLogin = const TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: AppColors.primary,
  );

  static const TextStyle textButonLogin = TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.white,
  );

  static TextStyle textSpanConta = TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w700,
    fontSize: 17,
    color: Get.isDarkMode ? AppColors.white : AppColors.primary,
  );

  static const TextStyle textSpanButton = TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w700,
    fontSize: 17,
    color: AppColors.red,
  );

  static TextStyle textPrice = TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w700,
    fontSize: 17,
    color: Get.isDarkMode ? Colors.black : AppColors.black,
  );

  static TextStyle textpromotion = TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.bold,
    fontSize: 12,
    color: Get.isDarkMode ? Colors.black : AppColors.black,
  );

  static TextStyle textpromotionTitle = TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w700,
    fontSize: 30,
    color: Get.isDarkMode ? AppColors.white : AppColors.primary,
  );

  static TextStyle textprod = TextStyle(
    fontFamily: 'Ubuntu',
    fontSize: 15,
    color: Get.isDarkMode ? Colors.black : AppColors.black,
  );

  static TextStyle textShopping = TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.bold,
    fontSize: 15,
    color: Get.isDarkMode ? Colors.black : AppColors.black,
  );

  static TextStyle companyName = const TextStyle(
    fontFamily: 'Ubuntu',
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    height: 1.5,
  );

  static TextStyle cupomText = const TextStyle(
    fontFamily: 'Ubuntu',
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    height: 1.5,
  );

  static TextStyle addButton = const TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: AppColors.white,
  );

  static TextStyle welcomeText = const TextStyle(
    height: 2,
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w700,
    fontSize: 23,
    letterSpacing: 2,
  );

  static TextStyle startShopping = const TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w300,
    fontSize: 20,
    letterSpacing: 5,
  );

  static TextStyle bills = const TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  static TextStyle totalPaid = const TextStyle(
    fontFamily: 'Ubuntu',
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static TextStyle priceText = const TextStyle(
    fontFamily: 'Ubuntu',
    fontSize: 20,
    color: Colors.white,
  );

  static TextStyle priceRed = const TextStyle(
    fontFamily: 'Ubuntu',
    color: Colors.red,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle nameText = const TextStyle(
    fontFamily: 'Ubuntu',
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static TextStyle menuText = const TextStyle(
    fontFamily: 'Ubuntu',
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}
