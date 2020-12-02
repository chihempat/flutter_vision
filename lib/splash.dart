import 'dart:ui';
import 'package:vision/snippets.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 3, 44, 1),
      //backgroundColor: Color(0x000726),
      body: GestureDetector(
        onTap: ()
        {
          Navigator.pushNamed(context, '/second');
        },
        child: Center(
          child: Logo(h:300,w:300,s:"VISION",f:100,),
        ),
      ),
    );
  }
}


