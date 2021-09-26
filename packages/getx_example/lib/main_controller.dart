import 'package:get/get.dart';

class MainController extends GetxController {
  final textList = <String>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 1));
    textList(['Hello', 'World', 'Test']);
  }

  void updateTextList() async {
    await Future.delayed(const Duration(seconds: 1));
    textList(['Test', 'Hello', 'World', 'Test']);
  }
}
