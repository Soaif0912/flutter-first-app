
import 'dart:math';
import 'package:get/get.dart';

class GetbuildVsObxController extends GetxController {
  var count = 0.obs; // Reactive state (will update entire widget using Obx)
  int randomValue = 0; // Normal state (will update only specific part using GetBuilder)
  var demoValue = 0.obs;

  void increment() {
    count++;
  }

  void generateRandomNumber() {
    randomValue = Random().nextInt(100); // Generates a random number
    update(); // Updates only the GetBuilder widget
  }
}
