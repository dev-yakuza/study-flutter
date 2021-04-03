import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}
