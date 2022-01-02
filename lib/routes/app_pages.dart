import 'package:get/get.dart';
import 'package:music_app/screens/home/home_bindings.dart';
import 'package:music_app/screens/home/home_page.dart';
import 'package:music_app/screens/login/login_bindings.dart';
import 'package:music_app/screens/login/login_page.dart';
import 'package:music_app/screens/signup/signup_bindings.dart';
import 'package:music_app/screens/signup/signup_page.dart';
import 'package:music_app/screens/splash/splash_bindings.dart';
import 'package:music_app/screens/splash/splash_page.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => SplashPage(),
      binding: SplashBindings(),
      transitionDuration: const Duration(seconds: 1),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginPage(),
      binding: LoginBindings(),
      //customTransition: ,
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.signup,
      page: () => const SignupPage(),
      binding: SignupBindings(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    /*
    GetPage(
      name: _Paths.navigation,
      page: () => const NavigationPage(),
      binding: NavigationBindings(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: _Paths.registration,
      page: () => const RegistrationPage(),
      binding: RegistrationBindings(),
    ),
    GetPage(
      name: _Paths.financial,
      page: () => const FinancialPage(),
      binding: FinancialBindings(),
    ),
    GetPage(
      name: _Paths.settings,
      page: () => const SettingsPage(),
      binding: SettingsBindings(),
    ),
    GetPage(
      name: _Paths.selling,
      page: () => const SellingPage(),
      binding: SellingBindings(),
    ),
    GetPage(
      name: _Paths.profile,
      page: () => const ProfilePage(),
      binding: ProfileBindings(),
    ),
    GetPage(
      name: _Paths.client,
      page: () => const ClientPage(),
      binding: ClientBindings(),
    ), */
  ];
}
