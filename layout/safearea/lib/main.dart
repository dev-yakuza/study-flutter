import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Text('Hello world'),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hello world'),
    );
  }
}
