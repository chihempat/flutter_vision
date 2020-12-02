import 'package:flutter/material.dart';
import 'package:vision/blue.dart';
import 'package:vision/blue2.dart';
import 'package:vision/blue3.dart';
import 'package:vision/home.dart';
import 'package:vision/main.dart';
import 'package:vision/pedometer.dart';
import 'package:vision/splash.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Splash(),
          '/second': (context) => Login(),
          '/third':(context)=>HomeScreen(),
          '/four':(context)=>FlutterBlueApp(),
          '/five':(context)=>Steps(),
        },
      title: 'Flutter Demo',
      theme: ThemeData.dark(
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Center(child: HomeScreen());
  }
}
