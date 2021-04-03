import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen B'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Second Screen'),
            onPressed: () {},
          ),
        ));
  }
}
