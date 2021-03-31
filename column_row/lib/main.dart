import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // SafeArea(
          //   child: Column(
          //     children: [
          //       Container(
          //         child: Text('Container 1'),
          //         width: 100,
          //         height: 100,
          //         color: Colors.red,
          //       ),
          //       Container(
          //         child: Text('Container 2'),
          //         width: 100,
          //         height: 100,
          //         color: Colors.yellow,
          //       ),
          //       Container(
          //         child: Text('Container 3'),
          //         width: 100,
          //         height: 100,
          //         color: Colors.blue,
          //       )
          //     ],
          //   ),
          // ),
          SafeArea(
        // child: Column(
        //   verticalDirection: VerticalDirection.up,
        //   children: [
        //     Container(
        //       child: Text('Container 1'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       child: Text('Container 2'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       child: Text('Container 3'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.blue,
        //     )
        //   ],
        // ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Container(
        //       child: Text('Container 1'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       child: Text('Container 2'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       child: Text('Container 3'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.blue,
        //     )
        //   ],
        // ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Container(
        //       child: Text('Container 1'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       child: Text('Container 2'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       child: Text('Container 3'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.blue,
        //     )
        //   ],
        // ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(
        //       child: Text('Container 1'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       child: Text('Container 2'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       child: Text('Container 3'),
        //       width: 100,
        //       height: 100,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       width: double.infinity,
        //     )
        //   ],
        // ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: [
        //     Container(
        //       child: Text('Container 1'),
        //       height: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       child: Text('Container 2'),
        //       height: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       child: Text('Container 3'),
        //       height: 100,
        //       color: Colors.blue,
        //     ),
        //   ],
        // ),
        // <<<<<<<<<<<<<<<<<<<<<<<<<<< ROW >>>>>>>>>>>>>>>>>>>>>>>>>>>
        // child: Row(
        //   children: [
        //     Container(
        //       child: Text('Container 1'),
        //       height: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       child: Text('Container 2'),
        //       height: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       child: Text('Container 3'),
        //       height: 100,
        //       color: Colors.blue,
        //     ),
        //   ],
        // ),
        child: Row(
          children: [
            Container(
              child: Text('Container 1'),
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
            ),
            Container(
              child: Text('Container 2'),
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              child: Text('Container 3'),
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
