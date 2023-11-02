import 'package:get/get.dart';
import 'package:uploadaudiofile/views/controllers/feedback_controller.dart';

class FeedbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedbackController());
  }
}
