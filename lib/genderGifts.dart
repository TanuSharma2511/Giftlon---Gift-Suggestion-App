import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:myapp/InfoScreen/info_screen.dart';
import 'package:myapp/navbar.dart';

class GenderGifts extends StatefulWidget {
   String tabGenderIndexSelected;
  GenderGifts({this.tabGenderIndexSelected});

  @override
  _GenderGiftsState createState() => _GenderGiftsState(tabGenderIndexSelected);
}

class _GenderGiftsState extends State<GenderGifts> {
   String tabGenderIndexSelected;
   _GenderGiftsState(this.tabGenderIndexSelected);

   List<Gift> gifts = [];
  bool _loading = true;
  final color = Color(0xff453658);

   @override
  void initState() {
    super.initState();
    print("This is a init state");
    print(tabGenderIndexSelected);
    getData();
  }

  Future getData() async {
    print("hi");
    gifts = [];
    http.Response response = await http.get(
      Uri.parse('http://10.0.2.2:8000/gender/$tabGenderIndexSelected'),
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
          print(gift.name);
        // print(jsonData[i]);
      }
     // print(gifts.length);
         setState(() {
      _loading = false;
        });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset : false,
       drawer: NavBar(),
      appBar: AppBar(
        title: Text("Age group"),
        backgroundColor: color,
      ),
       body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
         Expanded(
      child : _loading ? Center(
        child: CircularProgressIndicator(),
      ) : SingleChildScrollView(
        
     
            child: Container(
              margin: EdgeInsets.only(top: 16),
              child: ListView.builder(
                  itemCount: gifts.length,
                   scrollDirection: Axis.vertical,
                   shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return _buildCard(gifts[index].name, gifts[index].price, gifts[index].image,
                       false, false, context);
                  }),
            
        ),
      ),
    ),
           
          // Occasion(),
        ],
      ),
     
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
                     Image.network(
                       imgPath,
                fit: BoxFit.cover,
              ),
                  // Hero(
                  //     tag: imgPath,
                  //     child: Container(
                  //         height: 70.0,
                  //         width: 75.0,
                  //         decoration: BoxDecoration(
                  //             image: DecorationImage(
                  //                 image: AssetImage(imgPath),
                  //                 fit: BoxFit.contain)))),
                  
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
class Gift{
  final String name, price, image, purchase;
  Gift(this.name, this.price, this.image, this.purchase);
}
