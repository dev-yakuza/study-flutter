import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HOME'),
        ),
        body: SafeArea(
          child: Container(
            child: Text('hello'),
            color: Colors.red,
            width: 100,
            height: 100,
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(40.0),
          ),
        ));
  }
}
