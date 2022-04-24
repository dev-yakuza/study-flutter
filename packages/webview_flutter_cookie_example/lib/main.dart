import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late WebViewController _webViewController;
  final _cookieManager = CookieManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://dev-yakuza.posstree.com/en/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var cookies = await _webViewController.runJavascriptReturningResult(
            'document.cookie',
          );
          print(cookies);

          await _webViewController.runJavascriptReturningResult(
            'document.cookie = "_ga=; expires=Thu, 01 Jan 1970 00:00:00 UTC; domain=.posstree.com; path=/;"',
          );
          cookies = await _webViewController.runJavascriptReturningResult(
            'document.cookie',
          );
          print(cookies);

          await _cookieManager.clearCookies();
          cookies = await _webViewController.runJavascriptReturningResult(
            'document.cookie',
          );
          print(cookies);

          await _cookieManager.setCookie(
            const WebViewCookie(
              name: "test",
              value: "value",
              domain: ".posstree.com",
            ),
          );
          cookies = await _webViewController.runJavascriptReturningResult(
            'document.cookie',
          );
          print(cookies);
        },
        child: const Icon(Icons.web_outlined),
      ),
    );
  }
}
