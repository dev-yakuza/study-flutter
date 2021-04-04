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
              child: Text('Home'),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                // Navigator.popUntil(context, ModalRoute.withName('ScreenA'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
