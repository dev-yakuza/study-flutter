import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('url_launcher demo'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open'),
          onPressed: () async {
            final url = Uri.parse('https://dev-yakuza.posstree.com/en/');
            if (await canLaunchUrl(url)) {
              launchUrl(url, mode: LaunchMode.externalApplication);
            }
          },
        ),
      ),
    );
  }
}
