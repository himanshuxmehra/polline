import 'package:flutter/material.dart';
import 'package:polline/models/feed.dart';
import 'package:google_fonts/google_fonts.dart';


class News extends StatelessWidget {
  final List<Feed> news;
  News(this.news);
  
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
            'News', 
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
              child: SingleChildScrollView(
                              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    child: ListTile(
                      leading: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(              ),
                        child: Image(image: AssetImage(news[index].img),)
                      ),
                      title: Text(
                        news[index].title,
                      
                      ),
                      subtitle: Text(
                        news[index].desc),
                      trailing: Text('Link'),
                      ),
                  );
                },
                itemCount: news.length,                 
                      ),
              ),
                      
        
      )
      ],
    );
  }
}