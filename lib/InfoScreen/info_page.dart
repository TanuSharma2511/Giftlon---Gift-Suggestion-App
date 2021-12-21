import 'package:flutter/material.dart';
import 'package:myapp/InfoScreen/info_screen.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       child : ListView(
         shrinkWrap: true,
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 40.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Hand Bag', '\Rs499.99', 'assets/bag_1.png',
                      false, false, context),
                  _buildCard('Hand Bag', '\Rs499.99', 'assets/bag_2.png',
                      true, false, context),
                  _buildCard('Hand Bag', '\Rs499.99',
                      'assets/bag_4.png', false, true, context),
                  _buildCard('Hand Bag', '\Rs499.99', 'assets/bag_3.png',
                      false, false, context),
                    
                  //  _buildCard('Hand Bag', '\Rs499.99', 'assets/bag_1.png',
                  //     false, false, context),
                  // _buildCard('Hand Bag', '\Rs499.99', 'assets/bag_2.png',
                  //     true, false, context),
                  // _buildCard('Hand Bag', '\Rs499.99',
                  //     'assets/bag_4.png', false, true, context),
                  // _buildCard('Hand Bag', '\Rs499.99', 'assets/bag_3.png',
                  //     false, false, context)    
                ],
              )),
          SizedBox(height: 15.0)
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
                  // Padding(
                  //     padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  //     child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           if (!added) ...[
                  //             Icon(Icons.shopping_basket,
                  //                 color: Color(0xFFD17E50), size: 12.0),
                  //             Text('Add to cart',
                  //                 style: TextStyle(
                  //                     fontFamily: 'Varela',
                  //                     color: Color(0xFFD17E50),
                  //                     fontSize: 12.0))
                  //           ],
                  //           if (added) ...[
                  //             Icon(Icons.remove_circle_outline,
                  //                 color: Color(0xFFD17E50), size: 12.0),
                  //             Text('3',
                  //                 style: TextStyle(
                  //                     fontFamily: 'Varela',
                  //                     color: Color(0xFFD17E50),
                  //                     fontWeight: FontWeight.bold,
                  //                     fontSize: 12.0)),
                  //             Icon(Icons.add_circle_outline,
                  //                 color: Color(0xFFD17E50), size: 12.0),
                  //           ]
                  //         ]))
                ]))));
  }
}