import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentPolls extends StatelessWidget {
  final List rpoll;
  RecentPolls(this.rpoll);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[ 
        Container(
          color: Colors.indigo[800],
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(5),
          alignment: Alignment.topLeft,
          child: Text(
            'Recent Polls', 
            textAlign: TextAlign.left, 
            textWidthBasis: TextWidthBasis.parent,
            style: GoogleFonts.mcLaren(
              textStyle: TextStyle( 
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.white,
              ),
            ) , 
            
              ),
        ),
        Container(
          
          height: 180.0,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: rpoll.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: 160,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(              ),
              child: Image(image: AssetImage('$i'),)
            );
          },
        );
      }).toList()
      /*<Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 160.0,
                color: Colors.red,
                child: Image(image: AssetImage('$i'),)
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 160.0,
                child: Image(image: AssetImage('$i'),)
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 160.0,
                child: Image(image: AssetImage('$i'),)
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 160.0,
                child: Image(image: AssetImage('$i'),)
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 160.0,
                child: Image(image: AssetImage('$i'),)
              ),
            ],*/
          ),
      ),
      
      ]
    );
  }
}