import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:music_app/app/app_bindings.dart';
import 'package:music_app/routes/app_pages.dart';
import 'package:music_app/theme/color.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'app/main_page.dart';

/* void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(const MainPage());
}
 */

void main() async {
  // Firebase init
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // bind our app with the  Getx Controller
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
      home: const MainPage(),
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    );
  }
}
