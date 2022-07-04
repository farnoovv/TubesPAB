import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PCNOOV"),
      ),
      body: Center(
        child: const Text(
          'Beranda',
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
