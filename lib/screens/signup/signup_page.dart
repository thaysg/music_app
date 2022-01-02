import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:music_app/app/app_controller.dart';
import 'package:music_app/routes/app_pages.dart';
import 'package:music_app/shared/avatar_widget.dart';
import 'package:music_app/shared/button_widget.dart';
import 'package:music_app/shared/custom_text_field.dart';
import 'package:music_app/shared/text_button_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';
import './signup_controller.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignupController signupCtrl = Get.put(SignupController());
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            ResponsiveRowColumn(
              rowMainAxisAlignment: MainAxisAlignment.center,
              rowCrossAxisAlignment: CrossAxisAlignment.center,
              rowPadding: const EdgeInsets.all(24),
              columnPadding: const EdgeInsets.all(24),
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                const ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: AvatarWidget(),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Form(
                    key: signupCtrl.formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: controller.firstNameController,
                          validator: (value) {
                            if (value.toString().length <= 2) {
                              return 'Enter valid name.';
                            }
                            return null;
                          },
                          icon: Icons.person,
                          labelText: 'First Name',
                          hintText: 'Enter your first name',
                          obscureText: false,
                        ),
                        CustomTextField(
                          controller: controller.lastNameController,
                          validator: (value) {
                            if (value.toString().length <= 2) {
                              return 'Enter valid name.';
                            }
                            return null;
                          },
                          icon: Icons.person,
                          labelText: 'Last Name',
                          hintText: 'Enter your last name',
                          obscureText: false,
                        ),
                        CustomTextField(
                          controller: controller.emailController,
                          validator: (value) {
                            bool _isEmailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!);
                            if (!_isEmailValid) {
                              return 'Invalid email.';
                            }
                            return null;
                          },
                          icon: Icons.email,
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          obscureText: false,
                        ),
                        CustomTextField(
                          controller: controller.passwordController,
                          validator: (value) {
                            if (value.toString().length < 6) {
                              return 'Password should be longer or equal to 6 characters.';
                            }
                            return null;
                          },
                          icon: Icons.lock,
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          obscureText: true,
                        ),
                        CustomTextField(
                          controller: controller.passwordController,
                          validator: (value) {
                            if (value!.trim() !=
                                controller.passwordController.text.trim()) {
                              return 'Passwords does not match!';
                            }

                            return null;
                          },
                          icon: Icons.lock,
                          labelText: 'Password',
                          hintText: 'Confirm password',
                          obscureText: true,
                        ),
                        ButtonWidget(
                          onTap: () {
                            controller.saveButton();
                          },
                          title: 'Sign Up'.toUpperCase(),
                        ),
                        TextButtonWidget(
                          onTap: () {
                            Get.toNamed(Routes.login);
                          },
                          text: 'Já possui uma conta? ',
                          subtitle: ' Faça Login',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
