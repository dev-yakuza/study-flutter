import 'package:flutter/material.dart';

import 'package:parameters/home.dart';
import 'package:parameters/second.dart';

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
      initialRoute: 'home',
      routes: {
        'home': (context) => const Home(),
        'second': (context) => const Second(),
      },
    );
  }
}
