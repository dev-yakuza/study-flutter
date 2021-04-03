import 'package:flutter/material.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';

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
      initialRoute: 'ScreenA',
      routes: {
        'ScreenA': (context) => ScreenA(),
        'ScreenB': (context) => ScreenB(),
        'ScreenC': (context) => ScreenC(),
      },
    );
  }
}

// Stack Navigate <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Home(),
//     );
//   }
// }

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Navigator'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             child: Text('Second Screen'),
//             onPressed: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (_) => SecondScreen()));
//             },
//           ),
//         ));
//   }
// }

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Second Screen'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             child: Text('Home Screen'),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ));
//   }
// }
