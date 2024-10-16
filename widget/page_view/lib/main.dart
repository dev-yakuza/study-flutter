import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final pageController = PageController(
    initialPage: 0,
  );

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: PageView(
      //   controller: pageController,
      //   scrollDirection: Axis.vertical,
      //   onPageChanged: (index) {
      //     print('Page changed to $index');
      //   },
      //   children: [
      //     Container(
      //       width: double.infinity,
      //       height: double.infinity,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: double.infinity,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: double.infinity,
      //       color: Colors.green,
      //     ),
      //   ],
      // ),
      body: PageView.builder(
        controller: pageController,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: index % 2 == 0 ? Colors.red : Colors.blue,
          );
        },
      ),
    );
  }
}
