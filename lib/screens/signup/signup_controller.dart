import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/app/app_controller.dart';
import 'package:music_app/routes/app_pages.dart';
import 'package:music_app/theme/color.dart';

class SignupController extends GetxController {
  AppController authCtrl = Get.put(AppController());

  final formKey = GlobalKey<FormState>();
  /* String firstName = '';
  String lastName = '';
  String username = '';
  String password = ''; */

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isValid() {
    return formKey.currentState!.validate();
  }

  void saveButton() {
    if (formKey.currentState!.validate()) {
      String firstName = firstNameController.text.trim();
      String lastName = lastNameController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      authCtrl.signUp(firstName, lastName, email, password);
      // AppController.to.nameUser = username.text;
      Get.offAndToNamed(Routes.navigation);
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
