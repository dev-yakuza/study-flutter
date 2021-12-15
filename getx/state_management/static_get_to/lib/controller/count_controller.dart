import 'package:get/get.dart';

class CountController extends GetxController {
  static CountController get to => Get.find<CountController>();

  final count = 0.obs;

  void increment() {
    count.value++;
    // count(count.value + 1);
  }
}
