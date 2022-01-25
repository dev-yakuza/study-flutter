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
        title: const Text('URL Launcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                const url = 'https://dev-yakuza.posstree.com/en/';
                if (await canLaunch(url)) {
                  launch(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              child: const Text('Web Link'),
            ),
            ElevatedButton(
              onPressed: () async {
                const url =
                    'mailto:dev-yakuza@gmail.com?subject=Hello&body=Test';
                if (await canLaunch(url)) {
                  launch(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              child: const Text('Mail to'),
            ),
            ElevatedButton(
              onPressed: () async {
                const url = 'tel:+1 555 010 999';
                if (await canLaunch(url)) {
                  launch(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              child: const Text('Tel'),
            ),
            ElevatedButton(
              onPressed: () async {
                const url = 'sms:5550101234';
                if (await canLaunch(url)) {
                  launch(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              child: const Text('SMS'),
            ),
          ],
        ),
      ),
    );
  }
}
