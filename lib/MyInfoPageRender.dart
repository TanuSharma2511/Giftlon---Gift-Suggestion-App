import 'package:flutter/material.dart';
import 'package:myapp/Choices.dart';
import 'package:myapp/HistoryScreen.dart';
import 'package:myapp/infopage.dart';
import 'package:myapp/occasion.dart';
import 'category.dart';
import 'navbar.dart';

class MyInfoPageRender extends StatefulWidget {

  @override
  _MyInfoPageRenderState createState() => _MyInfoPageRenderState();
}

class _MyInfoPageRenderState extends State<MyInfoPageRender> {
  final color = Color(0xff453658);

  int _currentIndex = 0;

  final tabs = [
      //Center(child : Text('Home')),
      Center(child : Choices()),
      //Center(child : Text('Occasion')),
      Center(child : Occasion()),
      //Center(child : Text('Category')),
      Center(child : Category()),
      //Center(child : Text('History')),
      Center(child : HistoryScreen()),
      Center(child : Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset : false,
       drawer: NavBar(),
      appBar: AppBar(
        title: Text("Age group"),
        backgroundColor: color,
      ),
      //  body: Column(
      //   children: <Widget>[
      //     SizedBox(
      //       height: 50,
      //     ),
        
      //      Category(),
      //     // Occasion(),
      //   ],
      // ),
      // body : HistoryScreen(),
        body: MyInfoPage(),

        // body: tabs[_currentIndex],


      // body : Gender(),
      //body: SignupPage(),
      //body: AuthMethod(),
     //body: Login(),

    // body: Choices(),


       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: color,
        // backgroundColor: Colors.blue,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Color(0xff453658)
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            backgroundColor: Color(0xff453658)
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Category'),
            backgroundColor: Color(0xff453658)
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            title: Text('History'),
            backgroundColor: Color(0xff453658)
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: Color(0xff453658)
            ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        }
        )
    );
  }
}
