import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:music_app/app/app_bindings.dart';
import 'package:music_app/routes/app_pages.dart';
import 'package:music_app/screens/home/home_page.dart';
import 'package:music_app/screens/splash/splash_page.dart';
import 'package:music_app/theme/color.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'app_controller.dart';

class MainPage extends GetView<AppController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AppController>(
        builder: (_) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: _.isSignedIn.value ? const HomePage() : SplashPage(),
            ),
          );
        },
      ),
    );
  }

  /* @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (_) {
        return GetMaterialApp(
          initialBinding: AppBindings(),
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
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              elevation: 0,
              color: AppColors.darkTheme,
              toolbarTextStyle: TextStyle(
                color: AppColors.darkTheme,
                fontSize: 20,
              ),
            ),
          ),
          home: _.isSignedIn.value ? const HomePage() : SplashPage(),
          //initialRoute: _.isSignedIn.value ? Routes.home : Routes.splash,
          getPages: AppPages.routes,
          //initialRoute: AppPages.initial,
        );
      },
    );
  } */
}
