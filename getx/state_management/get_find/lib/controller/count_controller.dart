import 'package:get/get.dart';

class CountController extends GetxController {
  final count = 0.obs;

  void increment() {
    count.value++;
    // count(count.value + 1);
  }
}
