import 'package:get/get.dart';
import 'package:uploadaudiofile/views/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
