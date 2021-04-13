import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      print(position);
    } catch (e) {
      print('There was a problem with the internet connection.');
    }
  }

  void fetchData() async {
    http.Response response = await http.get(Uri.https(
        'samples.openweathermap.org',
        'data/2.5/weather',
        {'q': 'London', 'appid': 'b1b15e88fa797225412429c1c50c122a1'}));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var description = jsonData['weather'][0]['description'];
      var speed = jsonData['wind']['speed'];
      var id = jsonData['id'];
      print(description);
      print(speed);
      print(id);
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: null,
          child: Text(
            'Get my location',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
