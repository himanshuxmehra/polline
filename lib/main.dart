import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:polline/screen/app.dart';
import 'package:polline/util/const.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  bool isDark = false;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(MaterialApp(
      theme: isDark ? Constants.darkTheme : Constants.lightTheme,
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: isDark ? Constants.darkPrimary : Constants.lightPrimary,
      statusBarIconBrightness: isDark?Brightness.light:Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      title: Text(
        'Your Opinion Matters!',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      seconds: 5,
      navigateAfterSeconds: HomePage(),
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
