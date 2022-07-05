import 'package:flutter/material.dart';
import 'package:flutter_app1/constant.dart';

class AccountPage extends StatefulWidget {
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bg1,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
            height: 40,
          ),
          new Center(
            child: new Image.asset(
              "assets/images/logo2.png",
              height: 90.0,
              width: 270.0,
              ),
          ),
          Text(
            'Akun',
            style: TextStyle(
              fontSize: 15,
              fontFamily: '',
              fontWeight: FontWeight.w600,
              color: Colors.brown,
            ),
            textAlign: TextAlign.center,
          ),
          
          SizedBox(
            height: 40,
          ),
          ]
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
