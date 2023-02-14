import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('textScaleFactor example'),
      ),
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
            maximumSize: MaterialStatePropertyAll(
              Size.fromWidth(160),
            ),
          ),
          onPressed: () => {},
          child: const Text(
            'textScaleFactor',
            textScaleFactor: 1.0,
          ),
        ),
      ),
    );
  }
}
