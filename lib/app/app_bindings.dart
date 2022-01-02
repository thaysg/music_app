import 'package:get/get.dart';
import 'app_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<AppController>(AppController());
  }
}
