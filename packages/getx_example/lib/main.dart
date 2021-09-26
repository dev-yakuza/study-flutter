import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/main_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller = Get.put(MainController());

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Obx(
          () => Column(
            children:
                controller.textList.map((element) => Text(element)).toList(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            controller.updateTextList();
          },
        ),
      ),
    );
  }
}
