import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  var _selectedIndex;
  var _pageController;
  NavBar(this._selectedIndex);
  
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
    selectedIndex: _selectedIndex,
    showElevation: true, // use this to remove appBar's elevation
    onItemSelected: (index) => (() {
              _selectedIndex = index;
              _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
   }),
    
   items: [
     BottomNavyBarItem(
       icon: Icon(Icons.home),
       title: Text('Home'),
       activeColor: Colors.red,
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.search),
         title: Text('Users'),
         activeColor: Colors.purpleAccent
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.person),
         title: Text('Profile'),
         activeColor: Colors.pink
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.settings),
         title: Text('Settings'),
         activeColor: Colors.blue
     ),
   ],
);
  }
}