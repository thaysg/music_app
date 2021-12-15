import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:music_app/routes/app_pages.dart';
import 'package:music_app/theme/color.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'app_controller.dart';
import 'package:music_app/screens/splash/splash_page.dart';

class AppPage extends GetView<AppController> {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(
      builder: (_) {
        return GetMaterialApp(
          builder: (context, widget) => ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, widget!),
            defaultScale: true,
            breakpoints: const [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
          ),
          debugShowCheckedModeBanner: false,
          title: "DashBoard",
          theme: ThemeData.dark().copyWith(
            primaryColor: AppColors.darkTheme,
            scaffoldBackgroundColor: AppColors.darkTheme,
          ),
          home: const SplashPage(),
          getPages: AppPages.routes,
        );
      },
    );
  }
}
