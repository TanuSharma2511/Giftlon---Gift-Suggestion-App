import 'package:flutter/material.dart';
import 'package:myapp/Choices.dart';
import 'package:myapp/HistoryScreen.dart';
import 'package:myapp/category.dart';
import 'package:myapp/infopage.dart';
import 'package:myapp/occasion.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _currentIndex = 0;
  final color = Color(0xff453658);

  final tabs = [
      //Center(child : Text('Home')),
      Center(child : Choices()),
      //Center(child : Text('Occasion')),
      Center(child : Occasion()),
      //Center(child : Text('Category')),
      Center(child : Category()),
      //Center(child : Text('History')),
      Center(child : HistoryScreen()),
      Center(child : MyInfoPage()),
  ];
  
  @override
  Widget build(BuildContext context) {
     return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: color,
        // backgroundColor: Colors.blue,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: color
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            backgroundColor: color
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Category'),
            backgroundColor: color
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            title: Text('Trending'),
            backgroundColor: color
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: color
            ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        }
        );
    
  }
}
// class BottomNavigation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(

//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//             backgroundColor: Colors.blue
//             ),
//              BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             title: Text('Search'),
//             backgroundColor: Colors.blue
//             ),
//              BottomNavigationBarItem(
//             icon: Icon(Icons.category),
//             title: Text('Category'),
//             backgroundColor: Colors.blue
//             ),
//              BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             title: Text('Profile'),
//             backgroundColor: Colors.blue
//             ),
//         ]
//         ),
//     );
//   }
// }