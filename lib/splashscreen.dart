import 'dart:async';
import 'package:flutter/material.dart';
import 'package:order_breakfast/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.home,
              size: 100.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              "ASCOTT",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              "CARES",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
