part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const signup = _Paths.signup;
  static const home = _Paths.home;
  static const registration = _Paths.registration;
  static const financial = _Paths.financial;
  static const selling = _Paths.selling;
  static const settings = _Paths.settings;
  static const navigation = _Paths.navigation;
  static const profile = _Paths.profile;
  static const client = _Paths.client;
}

abstract class _Paths {
  static const splash = '/splash';
  static const login = '/login';
  static const signup = '/signup';
  static const home = '/home';
  static const registration = '/registration';
  static const financial = '/financial';
  static const selling = '/selling';
  static const settings = '/settings';
  static const navigation = '/navigation';
  static const profile = '/profile';
  static const client = '/client';
}
