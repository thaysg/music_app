import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:music_app/app/app_controller.dart';
import 'package:music_app/routes/app_pages.dart';
import 'package:music_app/shared/button_widget.dart';
import 'package:music_app/shared/custom_text_field.dart';
import 'package:music_app/shared/avatar_widget.dart';
import 'package:music_app/shared/text_button_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';
import './login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginCtrl = Get.put(LoginController());
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
                    key: loginCtrl.formKey,
                    child: Column(
                      children: [
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
                        ButtonWidget(
                          onTap: () {
                            controller.loginButton();
                          },
                          title: 'Login'.toUpperCase(),
                        ),
                        TextButtonWidget(
                          onTap: () {
                            Get.toNamed(Routes.signup);
                          },
                          text: 'Não possui uma conta? ',
                          subtitle: ' Cadastre-se',
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
