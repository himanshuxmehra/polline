import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  FirebaseUser user;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    FirebaseUser _user = await _firebaseAuth.currentUser();
    setState(() {
      user = _user;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(user);
    return Scaffold(
        body: user != null
            ? Home(
          user: user,
        )
            : Login());
  }
}
