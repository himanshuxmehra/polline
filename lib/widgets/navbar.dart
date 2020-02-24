import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:polline/screen/profile.dart';
import 'package:polline/screen/settings.dart';
import '../screen/home.dart';
import 'package:polline/screen/search.dart';

class NavBar extends StatefulWidget {
  int indx;
  NavBar(this.indx);

  @override
  _NavBarState createState() => _NavBarState(indx);
}

class _NavBarState extends State<NavBar> {
  int indxe;
  _NavBarState(this.indxe);
  Future navigateToSubPage(context, index)
  async{
    if(index==0)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(0)));
      }
    if(index==1)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Search(1)));
        }
    if(index==2)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(2)));
        }
    if(index==3)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Settings(3)));
        }

  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.white,
      buttonBackgroundColor: Colors.indigo[800],
      color: Colors.indigo[800],
      height: 50,
      animationDuration: Duration(milliseconds: 200),
      animationCurve: Curves.bounceInOut,
      index:indxe,
      onTap: (index){
        setState(() {
          indxe = index;
        });
        //navigateToSubPage(context, index);
        //index=indxe;
        },
      
      items: <Widget>[
        Icon(Icons.home, size: 25 , color: Colors.white,),
        Icon(Icons.search, size: 25 , color: Colors.white,),
        Icon(Icons.person, size: 25 , color: Colors.white,),
        Icon(Icons.settings, size: 25 , color: Colors.white,),
      ]
      );   
    }
}