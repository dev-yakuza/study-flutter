import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.red),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: Get.isDarkMode
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
        title: Text(
          Get.isDarkMode ? 'Dark Theme' : 'Light Theme',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Get.changeTheme(
              Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
            );
          },
          child: const Text('Change Theme'),
        ),
      ),
    );
  }
}
