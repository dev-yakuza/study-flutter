import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
