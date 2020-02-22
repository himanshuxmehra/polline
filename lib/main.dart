import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'screen/home.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      title: Text(
        'Your Opinion Matters!',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      seconds: 5,
      navigateAfterSeconds: Home(),
      image: Image.asset(
          'assets/loading.gif'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 150.0,
      onClick: () => print(" "),
      loaderColor: Colors.black,
    );
  }
}
