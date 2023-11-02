import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FeedbackController extends GetxController {
  RxDouble progress = 0.0.obs;
  RxString title = ''.obs;
  RxString subtitle = 'Loading...'.obs;
  RxString text = ''.obs;
  List<Map<String, dynamic>> jsonData = [];
  List<Map<String, dynamic>> textJsonData = [];
  LinearGradient gradient = const LinearGradient(
    colors: [Colors.orange, Colors.green],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  Timer? timer;
  int currentIndex = 0;
  int textDataIndex = 0; // Index for textJsonData

  @override
  void onInit() {
    super.onInit();
    loadJsonData().then((_) {
      initialize();
    });
  }

  // Here i am Initializing the values to the respective variables
  void initialize() {
    if (jsonData.isNotEmpty && textJsonData.isNotEmpty) {
      // Initialize the title and subtitle from the first item in JSON
      final currentData = jsonData[currentIndex];
      title.value = currentData['Tip'];
      subtitle.value = currentData['Category'];

      // Check if the textJsonData list contains data at the current index
      if (currentIndex < textJsonData.length) {
        final currentTextData = textJsonData[currentIndex];
        text.value = currentTextData['title'] ?? 'Default Text';
      } else {
        text.value =
            'Default Text'; // Set a default text in case of missing data
      }

      startTimer();
    }
  }

  // Function for start the Timer
  void startTimer() {
    if (jsonData.isNotEmpty) {
      if (currentIndex < jsonData.length - 1) {
        currentIndex++;
        final nextData = jsonData[currentIndex];
        int delayInSeconds = 3;

        if (progress.value == 0.98) {
          delayInSeconds = 6; // Wait for 6 seconds before reaching 0.99
        }
        timer = Timer(Duration(seconds: delayInSeconds), () {
          title.value = nextData['Tip'];
          subtitle.value = nextData['Category'];

          if (textJsonData.isNotEmpty) {
            textDataIndex++; // Increment textJsonData index
            text.value = textDataIndex < textJsonData.length
                ? (textJsonData[textDataIndex]['title'] ?? '')
                : '';
          } else {
            text.value = '';
          }

          if (progress.value < 0.25) {
            progress.value = 0.25;
          } else if (progress.value < 0.4) {
            progress.value = 0.4;
          } else if (progress.value < 0.6) {
            progress.value = 0.6;
          } else if (progress.value < 0.7) {
            progress.value = 0.7;
          } else if (progress.value < 0.85) {
            progress.value = 0.85;
          } else if (progress.value < 0.95) {
            progress.value = 0.95;
          } else if (progress.value < 0.98) {
            progress.value = 0.98;
          } else {
            // When progress reaches 100%, navigate back
            Get.back();
          }
          startTimer();
        });
      }
    }
  }

  // function for Loading the json from its particular file that is available in assets folder
  Future<void> loadJsonData() async {
    final jsonString = await rootBundle.loadString('assets/json_message.json');
    final List<dynamic> parsedData = json.decode(jsonString);
    jsonData = List<Map<String, dynamic>>.from(parsedData);

    final jsonStr = await rootBundle.loadString('assets/text.json');
    final List<Map<String, dynamic>> parsedTextData =
        List<Map<String, dynamic>>.from(json.decode(jsonStr));
    textJsonData = parsedTextData;
  }
}
