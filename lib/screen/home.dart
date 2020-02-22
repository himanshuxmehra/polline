import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text("Welcome To Polline "),
        automaticallyImplyLeading: false,
      ),
      body: new Center(
        child: new Text(
          "Welcome!",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}