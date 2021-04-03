import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen C'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Second Screen'),
            onPressed: () {},
          ),
        ));
  }
}
