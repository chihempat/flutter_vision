import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:vision/snippets.dart';
import 'package:vision/splash.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding:false,
      backgroundColor: bg,
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Logo(h:height/5,w:height/5,s:"V",f:height/7),
            TextField(
                decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'Username',
                     ),
            ),
            SizedBox(height: height/30,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox.fromSize(size: Size.fromHeight(height/20),),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(onPressed: ()=>print("Skipped"),
                  color: Color(0x13173D),
                  child: Text("Login",
                    style: gd.copyWith(fontSize:height/30),
                  ),),
                RaisedButton(onPressed: ()=>print("Skipped"),
                  color: Color(0x13173D),
                  child: Text("Sign Up",
                    style: gd.copyWith(fontSize:height/30),
                  ),),
              ],
            ),
            SizedBox(height: height/5,),
            Align(
              alignment:Alignment.bottomRight,
              child: RaisedButton(onPressed: ()=> Navigator.pushNamed(context, '/third'),
                color: Color(0x13173D),
                child: Text("Skip",
                  style: gd,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
