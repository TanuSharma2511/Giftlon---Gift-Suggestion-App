import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/OccasionGifts.dart';

class Occasion extends StatefulWidget {

  @override
  _OccasionState createState() => _OccasionState();
}

class _OccasionState extends State<Occasion> {
  String tabOccasionIndexSelected = "";
  
    Items item1 = new Items(
      title: "Birthday",
      subtitle: "",
      event: "38 Events",
      img: "assets/birthday-cake.png",
      name: "Birthday"
      );

  Items item2 = new Items(
    title: "Valentins Day",
    subtitle: "",
    event: "40 Items",
    img: "assets/wedding-couple.png",
    name: "Valentines Day",
  );
  Items item3 = new Items(
    title: "House Warming",
    subtitle: "",
    event: "46 Items",
    img: "assets/house.png",
    name: "HouseWarming",
  );
  Items item4 = new Items(
    title: "Anniversary",
    subtitle: "",
    event: "84 Items",
    img: "assets/confetti.png",
    name: "Aniversary",
  );
  Items item5 = new Items(
    title: "Graduation",
    subtitle: "",
    event: "94 Items",
    img: "assets/graduated.png",
    name: "Graduation",
  );

   Future getData() async {
    http.Response response = await http.get(
      Uri.parse('http://10.0.2.2:8000/occasion/?occasion=$tabOccasionIndexSelected'),
      headers: {
        "Accept": "application/json"
      }
      );
    print(response.body);
  }

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
             onTap: (){
          setState(() {
            tabOccasionIndexSelected = data.name;
            print(tabOccasionIndexSelected);


          });

          getData();
          Navigator.push(context,
             MaterialPageRoute(builder: (context) => OccasionGifts(tabOccasionIndexSelected : tabOccasionIndexSelected))
           );
        }
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
  String name;
  Items({this.title, this.subtitle, this.event, this.img, this.name});
}
