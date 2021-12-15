import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/app_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const AppPage());
}
