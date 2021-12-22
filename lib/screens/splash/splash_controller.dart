import 'package:get/get.dart';
import 'package:music_app/routes/app_pages.dart';

class SplashController extends GetxController {
  //loading está dentro de controller, pois quando estava junto com o stateful,
  //como ele criava 10 containers animados, era carregado 10 loading, e não apenas 1
  //dessa forma, ele é chamado apenas uma vez, e não 10 vezes, e navega para a tela
  loading() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.login);
  }

  @override
  void onReady() {
    loading();
    super.onReady();
  }
}
