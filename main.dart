import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'signUp.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {},
      debugShowCheckedModeBanner: false,
      title: 'Hello World Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            this.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.icecream),
          actions: [Icon(Icons.icecream)],
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            Container(
                width: 200,
                height: 200,
                child: Image.asset('images/login.png')),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                // keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.red, Colors.blueAccent]),
                ),
                child: FlatButton(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home(),
                        ));
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RichText(
                  text: TextSpan(
                      text: 'Dont have an account ?! ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyForm(),
                                    ));
                              })
                      ])),
            )
          ]),
        ));
  }
}

