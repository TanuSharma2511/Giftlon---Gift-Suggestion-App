import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/MyInfoGenderRender.dart';

class GridDashboard extends StatefulWidget {

  @override
  _GridDashboardState createState() => _GridDashboardState();
}

class _GridDashboardState extends State<GridDashboard> {
 Items item1 = new Items(
      title: "Music",
      subtitle: "",
      event: "3 Events",
      img: "assets/guitar.png");

  Items item2 = new Items(
    title: "Foodie",
    subtitle: "",
    event: "4 Items",
    img: "assets/food.png",
  );
  Items item3 = new Items(
    title: "Animal Lover",
    subtitle: "",
    event: "4 Items",
    img: "assets/squirrel.png",
  );
  Items item4 = new Items(
    title: "Fitness Freak",
    subtitle: "",
    event: "4 Items",
    img: "assets/yoga.png",
  );
  Items item5 = new Items(
    title: "Art and Craft",
    subtitle: "",
    event: "4 Items",
    img: "assets/paint.png",
  );
  Items item6 = new Items(
    title: "Electronics Lover",
    subtitle: "",
    event: "2 Items",
    img: "assets/smartphone.png",
  );
  Items item7 = new Items(
    title: "Book Worm",
    subtitle: "",
    event: "2 Items",
    img: "assets/book.png",
  );
  Items item8 = new Items(
    title: "Sports",
    subtitle: "",
    event: "2 Items",
    img: "assets/sport.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6, item7, item8];
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
            child : Container(
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
            MaterialPageRoute(builder: (context) => MyInfoGenderRender())
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


