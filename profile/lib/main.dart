import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                  radius: 60,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.red,
                thickness: 1,
              ),
              Text("Name",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Dev Yakuza',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20
              ),
              Text("Age",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('20',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Characters",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10,),
                  Text('Lovely',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10,),
                  Text('Enthusiastic',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10,),
                  Text('Friendly',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Image(
                  image: AssetImage(
                    'assets/bunny.gif',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}