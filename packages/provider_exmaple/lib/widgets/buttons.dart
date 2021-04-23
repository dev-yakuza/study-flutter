import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exmaple/providers/counts.dart';

class Buttons extends StatelessWidget {
  Counts _countProvider;

  @override
  Widget build(BuildContext context) {
    print('Buttons');
    _countProvider = Provider.of<Counts>(context, listen: false);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              _countProvider.add();
            },
            child: Icon(Icons.add)),
        SizedBox(
          width: 40,
        ),
        ElevatedButton(
            onPressed: () {
              _countProvider.remove();
            },
            child: Icon(Icons.remove))
      ],
    );
  }
}
