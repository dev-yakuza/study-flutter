import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => Get.back(),
          child: const Text('Go back'),
        ),
      ),
    );
  }
}
