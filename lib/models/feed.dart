import 'package:flutter/foundation.dart';

class Feed{
  final String img;
  final String title;
  final String link;
  final String desc;

  Feed(
   { 
    @required this.img,
    @required this.title,
    @required this.link,
    @required this.desc
    }
  );
}