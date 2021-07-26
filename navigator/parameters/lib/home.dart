import 'package:flutter/material.dart';
import 'package:parameters/second.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Center(
        child: TextButton(
          child: Text('Go to Second screen'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              'second',
              arguments: SecondScreenArguments(number: 5),
            );
          },
        ),
      ),
    );
  }
}
