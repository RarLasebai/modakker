import 'package:agendaapp/ui/Screens/athkarScreen.dart';
import 'package:agendaapp/ui/Screens/contactScreen.dart';
import 'package:agendaapp/ui/Screens/counterScreen.dart';
import 'package:agendaapp/ui/Screens/homeScreen.dart';
import 'package:agendaapp/ui/Screens/moshafScreen.dart';
import 'package:agendaapp/ui/Screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

Future<void> main() async {
  runApp(MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};
MaterialColor colorCustom = MaterialColor(0xFF880E4F, color);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home': (context) => HomeScreen(),
        'athkar': (context) => AthkarScreen(),
        'moshaf': (context) => MoshafScreen(),
        'tasbeeh': (context) => TasbeehScreen(),
        'contact': (context) => ContactScreen(),
      },
      title: 'Modakker App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorCustom,
        textTheme: TextTheme(
            headline1: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            bodyText1: TextStyle(
                fontSize: 20.0,
                color: Colors.black45,
                fontWeight: FontWeight.bold)),
      ),
      home: SplashScreen(),
    );
  }
}
