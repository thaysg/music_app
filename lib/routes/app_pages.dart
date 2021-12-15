import 'package:get/get.dart';
import 'package:music_app/screens/login/login_bindings.dart';
import 'package:music_app/screens/login/login_page.dart';
import 'package:music_app/screens/splash/splash_bindings.dart';
import 'package:music_app/screens/splash/splash_page.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginPage(),
      binding: LoginBindings(),
    )
    /*
    GetPage(
      name: _Paths.signup,
      page: () => const SignupPage(),
      binding: SignupBindings(),
    ),
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
