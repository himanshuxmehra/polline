import 'package:flutter/material.dart';
import 'package:polline/widgets/frontcar.dart';
import 'package:polline/widgets/navbar.dart';
import 'package:polline/widgets/news.dart';
import 'package:polline/widgets/recent_card.dart';
import '../widgets/appbaar.dart';
import '../models/feed.dart';


class Home extends StatelessWidget {
  int index;
  Home(this.index);

  final selIndex=0;
  final List imag = ['assets/img1.jpg','assets/img2.jpg','assets/img3.jpg'];
  final List rpolli = ['assets/default_poll.png','assets/default_poll.png','assets/default_poll.png'];
  final List<Feed> feed = [
    Feed(
      img: 'assets/img1.jpg', 
      title: 'News Title #1', 
      link:'#', 
      desc:'difsifsdfndskj'),
    Feed(
      img: 'assets/img2.jpg', 
      title: 'News Title #2', 
      link:'#', 
      desc:'difsifsrgsrkj'),
    Feed(
      img: 'assets/img3.jpg', 
      title: 'News Title #3', 
      link:'#', 
      desc:'diwretrytgsrkj'),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CAppBar(),
      bottomNavigationBar: NavBar(index),
      body: Column(
        children: <Widget>[
          FrontCar(imag),
          SizedBox(height: 5,),
          RecentPolls(rpolli),
          News(feed),
        ],
      ),
    );
  }
}