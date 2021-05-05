import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text("TabController"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.access_alarm),
                  text: 'Tab1',
                ),
                Text('tab2'),
                Text('tab3'),
              ],
            )),
        body: TabBarView(
          children: [
            Icon(Icons.alarm),
            Text('Tab2'),
            Text('Tab3'),
          ],
        ),
      ),
    );
  }
}
