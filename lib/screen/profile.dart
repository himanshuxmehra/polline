import 'package:flutter/material.dart';
import 'package:polline/widgets/frontcar.dart';
import 'package:polline/widgets/navbar.dart';
import 'package:polline/widgets/news.dart';
import 'package:polline/widgets/recent_card.dart';
import '../widgets/appbaar.dart';
import '../models/feed.dart';

class Profile extends StatelessWidget {
  int index;
  Profile(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CAppBar(),
      bottomNavigationBar: NavBar(index),
      body: Column(
        children: <Widget>[
          SizedBox(height: 5,),
          Text('This is settings page'),
        ],
      ),
    );
  }
}