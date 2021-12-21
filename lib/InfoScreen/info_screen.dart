import 'package:flutter/material.dart';
import 'package:myapp/bottomNavigation.dart';

class InfoScreenDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename;
  final color = Color(0xff453658);

  InfoScreenDetail({this.assetPath, this.cookieprice, this.cookiename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Products"),
        backgroundColor: color,
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   centerTitle: true,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      //   title: Text('Pickup',
      //       style: TextStyle(
      //           fontFamily: 'Varela',
      //           fontSize: 20.0,
      //           color: Color(0xFF545D68))),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),

      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            // child: Text(
            //   'Cookie',
            //   style: TextStyle(
            //           fontFamily: 'Varela',
            //           fontSize: 42.0,
            //           fontWeight: FontWeight.bold,
            //           color: Color(0xFFF17532))
            // ),
          ),
          SizedBox(height: 20.0),
           Center(
              child: Text(cookiename,
                  style: TextStyle(
                      color: color,
                      fontFamily: 'Varela',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0)),
            ),
            SizedBox(height: 35.0),
            Hero(
              tag: assetPath,
              child: Image.asset(assetPath,
              height: 200.0,
              width: 150.0,
              fit: BoxFit.contain
              )
            ),
            
            SizedBox(height: 20.0),
            Center(
              child: Text(cookieprice,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: color)),
            ),
            SizedBox(height: 10.0),
            // Center(
            //   child: Text(cookiename,
            //       style: TextStyle(
            //           color: color,
            //           fontFamily: 'Varela',
            //           fontSize: 24.0)),
            // ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Text('One of the most popular items among ladies now a days, can available in so many colors and easy to wash. Good option to give as gift',
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: color)
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: color
                ),
                child: Center(
                  child: Text('View More',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                ),
                  )
                )
              )
            )
        ]
      ),

      bottomNavigationBar: BottomNavigation(),
    );
  }
}