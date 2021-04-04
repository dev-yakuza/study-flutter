import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Screen B'),
              onPressed: () {
                Navigator.pushNamed(context, 'ScreenB');
              },
            ),
            ElevatedButton(
              child: Text('Second C'),
              onPressed: () {
                Navigator.pushNamed(context, 'ScreenC');
              },
            ),
          ],
        ),
      ),
    );
  }
}
