import 'package:flutter/material.dart';
import 'dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController idController = TextEditingController();
  TextEditingController pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Builder(
        builder: (conetxt) => GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                ),
                Center(
                  child: Image(
                    image: AssetImage('image/chef.gif'),
                    width: 170.0,
                    height: 190.0,
                  ),
                ),
                Form(
                  child: Theme(
                    data: ThemeData(
                      primaryColor: Colors.teal,
                      inputDecorationTheme: InputDecorationTheme(
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 15.0),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Enter dice',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            controller: idController,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Enter password',
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            controller: pwController,
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          ButtonTheme(
                            minWidth: 100.0,
                            height: 50.0,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orangeAccent),
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 35.0,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                String id = idController.text;
                                String pw = pwController.text;

                                print(id);
                                print(pw);

                                if (id == 'yakuza' && pw == '12345') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Dice(),
                                    ),
                                  );
                                } else if (id == 'yakuza' && pw != '12345') {
                                  showSnackBar(context, 'Check your password!');
                                } else if (id != 'yakuza' && pw == '12345') {
                                  showSnackBar(context, 'Check your ID!');
                                } else {
                                  showSnackBar(
                                      context, 'Check your login info!');
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.blue,
    duration: Duration(milliseconds: 2000),
  ));
}
