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
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

// class HomeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.red,
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.yellow,
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.green,
//           ),
//         ],
//       ),
//     );
//   }
// }
