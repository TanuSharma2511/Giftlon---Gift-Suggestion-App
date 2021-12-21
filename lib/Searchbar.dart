import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:myapp/InfoScreen/info_screen.dart';

class SearchBar extends StatefulWidget {

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
    bool _loading = true;
    String gift = "";
   final nameCon = new TextEditingController();
   List<Gift> gifts = [];
  List<String> text = ["a","b","c"];


  @override
  void initState() {
    super.initState();
    print("This is a init state");
  }

  
  Future getDataFromAmazon() async{
    http.Response response = await http.get(
       Uri.parse('https://amazon23.p.rapidapi.com/product-search?query=$gift'),
       headers: {
         "Accept" : "application/json",
         "x-rapidapi-host" : "amazon23.p.rapidapi.com",
         "x-rapidapi-key" : "d44ffee05fmsh628dec6a017e17dp1f11b6jsn41d8419a7ed4"
       }
    );
    // print(response.body);
     var jsonData = jsonDecode(response.body);
      
      var res = jsonData["result"];
      print(res[0]["asin"]);

      // for(var u in res){
      //   // Gift gift = new Gift(u["title"], u["asin"], u["thumbnail"], u["reviews"][1]);
      //   print(u);
      // }

      for(var i =0; i < 15; i++){
        //print(res[i]["asin"]);
        Gift gift = new Gift(res[i]["title"], res[i]["asin"], res[i]["thumbnail"], res[i]["url"]);
        gifts.add(gift);
        //print(gifts[i].name);
      }
         setState(() {
      _loading = false;
        });
       print(gifts.length);
      // print(gifts);
  }


  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set state called");
  }

  void getItems(){
    //  for(var i =0; i < gifts.length; i++){
    //     print(gifts[i].pic);
    //   }
    print(_loading);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Widget Destroyed");
  }

  @override
  Widget build(BuildContext context) {
    // var city_name = ["Mumbai", "Delhi","Chennai", "Dhar", "Indore", "London"];
    // final _random = new Random();
    // var city = city_name[_random.nextInt(city_name.length)];

   

    return SafeArea(

        child: Container(
          child: Column(
            children: [
              Container( //Search Wala Container

                padding: EdgeInsets.symmetric(horizontal: 8),
                margin: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Row(

                  children: [
                   GestureDetector(
                     onTap: () {
                       setState(() {
                         gift = nameCon.text;
                       });
                       getDataFromAmazon();
                       print(gift);
                      // getItems();
                     },
                     child: Container(child: Icon(Icons.search,color: Colors.black,),margin: EdgeInsets.fromLTRB(3, 0, 7, 0),),
                   ),
                    Expanded(
                      child: TextField(
                       controller: nameCon, 
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search gifts"
                      ),
                      ),
                    )
                  ],
                ),
              ),
          //    SingleChildScrollView( 
          //   child : ListView.builder(
          //     scrollDirection: Axis.vertical,
          //      shrinkWrap: true,
          //     itemCount: gifts.length,
          //     itemBuilder: (context, index){
          //     return  _buildCard(gifts[index].name, '1123.4', gifts[index].pic,
          //             false, false, context);
          // }
          // ),
          //    ),
   
  //             Container (
  //   width: MediaQuery.of(context).size.width,
  //   margin: EdgeInsets.only(bottom: 10.0),
  //   height: 70,
    
  //   child: Visibility(
  //     visible: true,
  //     child: RaisedButton(
      
  //       color: Color(0xff453658),
  //        onPressed: () {
  //                      getItems();
  //                    },
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  //       child: FittedBox(
  //         child: Text(
  //          'Test',
  //           style: TextStyle(fontSize: 25, color: Colors.white),
  //         ),
  //       )
  //     )
  //   ),
  // ),
    // Column(
    //   children:[
    //     for(var i in gifts) Text('hello')
    //   ]
    // ),
    SingleChildScrollView(
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
                    return _buildCard(gifts[index].name, '\Rs499.99', gifts[index].pic,
                       false, false, context);
                  }),
            
        ),
      ),
    ),
    
            ],
          ),
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

class Gift{
  final String name, price, pic, rating;
  Gift(this.name, this.price, this.pic, this.rating);
}