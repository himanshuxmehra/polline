import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FrontCar extends StatelessWidget {
  
  final List imag;

  FrontCar(this.imag);
  
  @override
  Widget build(BuildContext context) {
   return CarouselSlider(
      aspectRatio: 16/9,
      enableInfiniteScroll: true,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      pauseAutoPlayOnTouch: Duration(seconds: 5),
      enlargeCenterPage: true,
      items: imag.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.transparent
              ),
              child: Image(image: AssetImage('$i'),)
            );
          },
        );
      }).toList(),
    ); 
  }
}