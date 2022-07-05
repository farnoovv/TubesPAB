// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_app1/constant.dart';
import 'package:flutter_app1/users/cartpage.dart';
import 'package:flutter_app1/users/home.dart';
import 'package:flutter_app1/users/transactionpage.dart';
import 'package:flutter_app1/users/accountpage.dart';


class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new HomePage(),
    new CartPage(),
    new TransactionPage(),
    new AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("PCNOOV"),
      // ),
      body: _container[_bottomNavCurrentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.c1,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _bottomNavCurrentIndex = index; 
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Palette.c1,
            ),
            icon: new Icon(
              Icons.home,
              color: Palette.bg2,
            ),
            label: 'Beranda',
          ),

          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.shopping_cart,
              color: Palette.c1,
            ),
            icon: new Icon(
              Icons.shopping_cart,
              color: Palette.bg2,
            ),
            label: 'Keranjang',
          ),

          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.shopping_bag_rounded,
              color: Palette.c1,
            ),
            icon: new Icon(
              Icons.shopping_bag_rounded,
              color: Palette.bg2,
            ),
            label: 'Transaksi',
          ),

          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.account_box_rounded,
              color: Palette.c1,
            ),
            icon: new Icon(
              Icons.account_box_rounded,
              color: Palette.bg2,
            ),
            label: 'Akun',
          ),

  
          
        ],
        // currentIndex: _selectedIndex,
      ),
    );
  }
}
