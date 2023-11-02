import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:uploadaudiofile/views/binding/feedback_binding.dart';
import 'package:uploadaudiofile/views/binding/splash_binding.dart';
import 'package:uploadaudiofile/views/screens/splash_screen.dart';
import 'package:uploadaudiofile/views/screens/feedback_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splashScreen';
  static const String feedback = '/feedback';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: feedback,
      page: () => FeedbackScreen(),
      bindings: [
        FeedbackBinding(),
      ],
    ),
  ];
}
