import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/MyInfoPageRender.dart';


class Category extends StatelessWidget {
  
    Items item1 = new Items(
      title: "Kids",
      subtitle: "",
      event: "33 Events",
      img: "assets/baby-boy.png");

  Items item2 = new Items(
    title: "Teens",
    subtitle: "",
    event: "24 Items",
    img: "assets/teenage.png",
  );
  Items item3 = new Items(
    title: "Youths",
    subtitle: "",
    event: "90 Items",
    img: "assets/lover.png",
  );
  Items item4 = new Items(
    title: "Adults",
    subtitle: "",
    event: "49 Items",
    img: "assets/man.png",
  );
  Items item5 = new Items(
    title: "Elders",
    subtitle: "",
    event: "47 Items",
    img: "assets/couple.png",
  );



  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
           return InkWell(                        
        child: Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                
                ],
              ),
              
            ),                        
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyInfoPageRender())
          ),
         );
          
          }).toList()),
    );

  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
