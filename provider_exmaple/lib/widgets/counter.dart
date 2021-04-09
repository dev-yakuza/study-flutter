import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:provider_exmaple/providers/counts.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Counter');

    return Consumer<Counts>(
      builder: (context, provider, child) => Text(
        provider.count.toString(),
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}