import 'package:get/get.dart';

class CountController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }
}
