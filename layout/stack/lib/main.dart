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
      body: Stack(
        children: [
          Container(
            width: 400,
            height: 400,
            color: Colors.green,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
