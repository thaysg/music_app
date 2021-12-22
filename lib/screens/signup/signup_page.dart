import 'package:get/get.dart';
import 'package:flutter/material.dart';
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
                    rowFlex: 1, child: AvatarWidget()),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Column(
                    children: [
                      Form(
                        child: Column(
                          children: [
                            const CustomTextField(
                              icon: Icons.person,
                              labelText: 'First Name',
                              hintText: 'Enter your first name',
                              obscureText: false,
                            ),
                            const CustomTextField(
                              icon: Icons.person,
                              labelText: 'Last Name',
                              hintText: 'Enter your last name',
                              obscureText: false,
                            ),
                            const CustomTextField(
                              icon: Icons.person,
                              labelText: 'Username',
                              hintText: 'Enter your username',
                              obscureText: false,
                            ),
                            const CustomTextField(
                              icon: Icons.lock,
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              obscureText: true,
                            ),
                            const CustomTextField(
                              icon: Icons.lock,
                              labelText: 'Password',
                              hintText: 'Confirm password',
                              obscureText: true,
                            ),
                            ButtonWidget(
                              onTap: () {},
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
                    ],
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
