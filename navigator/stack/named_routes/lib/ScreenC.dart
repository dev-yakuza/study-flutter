import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text('Second A'),
              onPressed: () {
                Navigator.pushNamed(context, 'ScreenA');
              },
            ),
            ElevatedButton(
              child: Text('Second B'),
              onPressed: () {
                Navigator.pushNamed(context, 'ScreenB');
              },
            ),
          ],
        ),
      ),
    );
  }
}
