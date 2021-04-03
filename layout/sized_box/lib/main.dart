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
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
