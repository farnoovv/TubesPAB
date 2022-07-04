import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app1/constant.dart';
import 'package:flutter_app1/users/main.dart' as users;

class LaunchPage extends StatefulWidget {
  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  void initState() {
    super.initState();
    startLauching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLauching() async{
    var duration = const Duration(seconds: 5);
    return new Timer(duration, (){
      Navigator.of(context)
      .pushReplacement(new MaterialPageRoute(builder: (_){
      return new users.MainPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[400]!,
              offset: Offset(2,4),
              blurRadius: 5,
              spreadRadius: 2
            )
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Palette.bg1, Palette.bg2], 
          ),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new Image.asset(
              "assets/images/logo2.png",
              height: 90.0,
              width: 270.0,
              ),
          )
        ]
      ),
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
