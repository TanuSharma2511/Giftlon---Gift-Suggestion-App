import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/CategoryGifts.dart';
import 'package:myapp/InfoScreen/info_screen.dart';
import 'package:myapp/MyInfoPageRender.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Category extends StatefulWidget {

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  String tabAgeGroupIndexSelected = "";
  List<Gift> gifts = [];
  bool _loading = true;

    Items item1 = new Items(
      title: "Kids",
      subtitle: "",
      event: "33 Events",
      img: "assets/baby-boy.png",
      name: "Kid"
      );

  Items item2 = new Items(
    title: "Teens",
    subtitle: "",
    event: "24 Items",
    img: "assets/teenage.png",
    name: "Teen",
  );
  Items item3 = new Items(
    title: "Youths",
    subtitle: "",
    event: "90 Items",
    img: "assets/lover.png",
    name: "Youth",
  );
  Items item4 = new Items(
    title: "Adults",
    subtitle: "",
    event: "49 Items",
    img: "assets/man.png",
    name: "Adult",
  );
  Items item5 = new Items(
    title: "Elders",
    subtitle: "",
    event: "47 Items",
    img: "assets/couple.png",
    name: "Elderly"
  );

  Future getData() async {
    print("hi");
    gifts = [];
    http.Response response = await http.get(
      //Uri.parse('http://127.0.0.1:8000/ageGroup/?ageGroup=$_tabAgeGroupIndexSelected'),
      Uri.parse('http://10.0.2.2:8000/ageGroup/$tabAgeGroupIndexSelected'),
      headers: {
        "Accept": "application/json"
      }
      );
      print("hello");
        var jsonData = jsonDecode(response.body);
      
      //  var res = jsonData["result"];
        print(jsonData.length);
      
      for(var i =0; i < jsonData.length; i++){
        Gift gift = new Gift(jsonData[i]["Product Name"], jsonData[i]["Price Range"], jsonData[i]["Image URL"], jsonData[i]["Purchase URL"]);
         gifts.add(gift);
        // print(gift);
        //  print(gift.name);
        // print(jsonData[i]);
      }
     // print(gifts.length);
         setState(() {
      _loading = false;
        });
      //  print(jsonData[0]["Product Name"]);
      // print(gifts);
    // print(response.body);

    // var data = json.decode(response.body);
    // //print(data["item_id"]);
    // setState(() {
    //     result = data["item_id"];
    // });
    
    
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
        // onTap: () => Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => MyInfoPageRender())
        //   ),
        onTap: (){
          setState(() {
            tabAgeGroupIndexSelected = data.name;
            print(tabAgeGroupIndexSelected);
          });

          getData();
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => CategoryGifts(tabAgeGroupIndexSelected : tabAgeGroupIndexSelected))
           );
        }
         );
          
          }).toList()),
    );

  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => InfoScreenDetail(
                    assetPath: imgPath,
                    cookieprice:price,
                    cookiename: name
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.favorite, color: Color(0xff453658))
                                : Icon(Icons.favorite_border,
                                    color: Color(0xff453658))
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 70.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xff453658),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                 
                ]))));
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
class Gift{
  final String name, price, image, purchase;
  Gift(this.name, this.price, this.image, this.purchase);
}



