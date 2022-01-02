import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/app/app_controller.dart';
import 'package:music_app/routes/app_pages.dart';
import 'package:music_app/theme/color.dart';

class LoginController extends GetxController {
  AppController authCtrl = Get.put(AppController());

  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isValid() {
    return formKey.currentState!.validate();
  }

  void loginButton() {
    if (formKey.currentState!.validate()) {
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      authCtrl.signIn(email, password);
      // AppController.to.nameUser = username.text;
      Get.offAndToNamed(Routes.home);
      /*  Get.snackbar("Sucesso !", "Bem Vindo",
          backgroundColor: AppColors.green,
          snackPosition: SnackPosition.TOP,
          colorText: AppColors.white); */
    } else {
      Get.snackbar("Erro !", "Dados Incorretos",
          backgroundColor: AppColors.red,
          snackPosition: SnackPosition.TOP,
          colorText: AppColors.white);
    }
  }
}
