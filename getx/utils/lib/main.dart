// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Check OS ==========================================');
    print('isAndroid: ${GetPlatform.isAndroid}');
    print('isIOS: ${GetPlatform.isIOS}');
    print('isMacOS: ${GetPlatform.isMacOS}');
    print('isWindows: ${GetPlatform.isWindows}');
    print('isLinux: ${GetPlatform.isLinux}');
    print('isFuchsia: ${GetPlatform.isFuchsia}');

    print('Check Platform ==========================================');
    print('isMobile: ${GetPlatform.isMobile}');
    print('isDesktop: ${GetPlatform.isDesktop}');
    print('isWeb: ${GetPlatform.isWeb}');

    print('Width/Height ==========================================');
    print('width: ${Get.width}');
    print('height: ${Get.height}');

    print('Context ==========================================');
    final context = Get.context!;
    // final context = Get.contextOverlay!;
    print('context width: ${context.width}');
    print('context height: ${context.height}');

    print('context widthTransformer: ${context.widthTransformer()}');
    print('context heightTransformer: ${context.heightTransformer()}');

    print('context mediaQuerySize: ${context.mediaQuerySize}');
    print('context mediaQueryPadding: ${context.mediaQueryPadding}');
    print('context mediaQueryViewPadding: ${context.mediaQueryViewPadding}');
    print('context mediaQueryViewInsets: ${context.mediaQueryViewInsets}');
    print('context devicePixelRatio: ${context.devicePixelRatio}');

    print('context orientation: ${context.orientation}');
    print('context isLandscape: ${context.isLandscape}');
    print('context isPortrait: ${context.isPortrait}');

    print('context textScaleFactor: ${context.textScaleFactor}');

    print('context isPhone: ${context.isPhone}');
    print('context isSmallTablet: ${context.isSmallTablet}');
    print('context isLargeTablet: ${context.isLargeTablet}');
    print('context isTablet: ${context.isTablet}');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
