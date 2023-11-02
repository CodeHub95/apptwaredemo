import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uploadaudiofile/constants/string_const.dart';
import 'package:uploadaudiofile/views/controllers/feedback_controller.dart';
import 'package:uploadaudiofile/views/theme/app_size.dart';
import 'package:uploadaudiofile/views/theme/app_style.dart';
import 'package:lottie/lottie.dart';

class FeedbackScreen extends StatelessWidget {
  FeedbackScreen({super.key});

  FeedbackController feedbackController = Get.put(FeedbackController());

  @override
  Widget build(BuildContext context) {
    feedbackController.initialize();
    feedbackController.loadJsonData();
    feedbackController.startTimer();
    // feedbackController.getURLData();
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                      padding: getPadding(
                          top: MediaQuery.of(context).size.height / 5),
                      child: Text(StringConst.preparingFeedback,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtSFProTextRegular24)),
                ),
                Padding(
                    padding: getPadding(
                        top: MediaQuery.of(context).size.height * 0.01),
                    child: Text(StringConst.dataScientist,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsMedium10Gray80013)),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Divider(
                        height: getVerticalSize(1),
                        thickness: getVerticalSize(1),
                        color: const Color(0xFFC3CAD9),
                      ),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: LottieBuilder.network(
                          'https://lottie.host/b2d53978-3c17-4880-b716-b8d4a1650bfb/HxzRKUhTTQ.json',
                          fit: BoxFit.contain,
                          height: MediaQuery.of(context).size.height * 0.25,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 0,
                          top: 90,
                          right: 0,
                          bottom: 0,
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 4.5,
                          margin: getMargin(top: 8),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xFFFBC02D),
                              width: 1,
                            ),
                          ),
                          child: Obx(
                            () => Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${feedbackController.subtitle}',
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtCategory,
                                  ),
                                  Text(
                                    '${feedbackController.title}',
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtTip,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: getPadding(
                        top: MediaQuery.of(context).size.height / 13),
                    child: Obx(
                      () => Text('${feedbackController.text}',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtText),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Obx(() => Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.015,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xffBABABA),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                        width: MediaQuery.of(context).size.width * 0.466,
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: feedbackController.progress.value,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: feedbackController.gradient,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),

                Obx(
                  () => Padding(
                      padding: getPadding(top: 10),
                      child: Text(
                          '${(feedbackController.progress.value * 100).toInt()}%',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtText)),
                ),
              ]),
        ));
  }
}
