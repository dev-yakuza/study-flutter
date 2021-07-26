import 'package:flutter/material.dart';

class SecondScreenArguments {
  final int number;

  SecondScreenArguments({required this.number});
}

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SecondScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('SECOND'),
      ),
      body: Center(
        child: Text('${args.number}'),
      ),
    );
  }
}
