import 'package:flutter/material.dart';
import 'package:flutter_app1/constant.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
            'Keranjang',
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
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical:30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30) )
              ),
              
            ),
          ),
          ]
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
