import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:polline/screen/app.dart';




class CAppBar extends StatefulWidget implements PreferredSizeWidget{
  CAppBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize;

  @override
  _CAppBarState createState() => _CAppBarState();
}

class _CAppBarState extends State<CAppBar> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return AppBar(
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Polline', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.indigo[800],
                    ),
                  ),
                ],
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.search, color: Colors.indigo[800], size: 25,),
                  padding: EdgeInsets.all(5),
                  color: Colors.indigo[800],
                ),
                IconButton(
                  onPressed: () {
                    _firebaseAuth.signOut();
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Icon(Icons.phonelink_erase, color: Colors.indigo[800], size: 25),
                  padding: EdgeInsets.all(5),
                  color: Colors.indigo[800],
                )
              ],
            );
  }
}