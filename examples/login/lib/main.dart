import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Image(
                image: AssetImage('assets/profile.png'),
                width: 100,
                height: 100,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        labelStyle: TextStyle(color: Colors.redAccent),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.redAccent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.redAccent),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          )
        ],
      ),
    );
  }
}
