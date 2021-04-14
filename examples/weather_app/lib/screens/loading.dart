import 'package:flutter/material.dart';

import 'package:weather_app/data/my_location.dart';
import 'package:weather_app/data/networks.dart';
import 'package:weather_app/screens/weather_screen.dart';

const API_KEY = '73bd07d674cc4569f650bad6f22dc79d';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double latitude;
  double longitude;

  void getLocation() async {
    MyLocation location = MyLocation();
    await location.getMyCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    Networks networks = Networks(
      Uri.https(
        'api.openweathermap.org',
        'data/2.5/weather',
        {
          'units': 'metric',
          'lat': latitude.toString(),
          'lon': longitude.toString(),
          'appid': API_KEY,
        },
      ),
    );
    var weatherData = await networks.getJsonData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(
        parseWeather: weatherData,
      );
    }));
  }

  @override
  void initState() {
    super.initState();
    getLocation();
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
