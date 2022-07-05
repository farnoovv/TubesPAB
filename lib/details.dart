import 'package:flutter/material.dart';
import 'package:flutter_app1/constant.dart';

class DetailsPage extends StatelessWidget {

  final String imagePath;
  final String price;
  final String category;
  final String title;

  DetailsPage({
    required this.imagePath,
    required this.price,
    required this.category,
    required this.title, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        child: Column(
          children: <Widget>[
          Expanded(   
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30), 
                  bottomRight: Radius.circular(30)
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ), 
            Container(
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(title, style: TextStyle(
                          color: Palette.c1,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Helvetica',
                          
                        ),
                        ),
                        Text(price, 
                        style: TextStyle(
                          color: Palette.c1,
                          fontSize: 30,
                        ),
                        ),
                        Text(category, style: TextStyle(
                          color: Palette.c1,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                      ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            // padding: EdgeInsets.symmetric(vertical:15),
                            // color: Palette.bg2,
                            child: Text('Kembali', style: TextStyle(
                              color: Palette.bg2,
                              fontSize: 15,
                            ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              
                            },
                            // padding: EdgeInsets.symmetric(vertical:15),
                            // color: Palette.bg2,
                            child: Text('Beli', style: TextStyle(
                              color: Palette.bg2,
                              fontSize: 15,
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}