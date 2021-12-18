import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:argument/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MyHomePage()),
        GetPage(name: '/second', page: () => const Second()),
      ],
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Next Screen'),
          onPressed: () => Get.toNamed(
            '/second',
            arguments: {
              "greeting": "Hello",
              "name": "World",
            },
          ),
        ),
      ),
    );
  }
}
