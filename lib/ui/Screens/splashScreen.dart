import 'dart:async';
import 'package:agendaapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 6),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MaterialColor(0xFF880E4F, color),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 370,
            height: 330,
            child: Image.asset(
              "icons/logo.png",
              width: 370,
              height: 330,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 100.0),
          SpinKitWave(
            color: Colors.white,
            size: 50,
          ),
        ],
      ),
    );
  }
}
