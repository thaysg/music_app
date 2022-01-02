import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app/app_controller.dart';
import '../../routes/app_pages.dart';
import '../../theme/color.dart';

class SignupController extends GetxController {
  AppController authCtrl = Get.put(AppController());

  final formKey = GlobalKey<FormState>();

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

      Get.offAndToNamed(Routes.home);
      Get.snackbar("Sucesso !", "Bem Vindo",
          backgroundColor: AppColors.green,
          snackPosition: SnackPosition.TOP,
          colorText: AppColors.white);
    } else {
      Get.snackbar("Erro !", "Dados Incorretos",
          backgroundColor: AppColors.red,
          snackPosition: SnackPosition.TOP,
          colorText: AppColors.white);
    }
  }
}
