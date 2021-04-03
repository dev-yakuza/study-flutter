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
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        child: Text(
          'Hello world',
          style: TextStyle(color: Colors.red),
        ),
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 50.0),
        margin: EdgeInsets.all(100.0),
        width: 200,
        height: 100,
        transform: Matrix4.rotationZ(0.5),
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: const [
            BoxShadow(blurRadius: 10),
          ],
        ),
      ),
    );
  }
}

// class HomeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Container'),
//       ),
//       body: Container(
//         color: Colors.red,
//         child: Text(
//           'Hello world',
//           style: TextStyle(color: Colors.yellow),
//         ),
//       ),
//     );
//   }
// }

// class HomeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Container'),
//       ),
//       body: Container(
//         color: Colors.red,
//       ),
//     );
//   }
// }
