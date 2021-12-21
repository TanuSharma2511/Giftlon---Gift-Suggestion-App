import 'package:flutter/material.dart';
import 'package:myapp/Choices.dart';
import 'package:myapp/HistoryScreen.dart';
import 'package:myapp/occasion.dart';
import 'category.dart';
import 'navbar.dart';

// class CategoryRender extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     final color = Color(0xff453658);

//   int _currentIndex = 0;

//   final tabs = [
//       //Center(child : Text('Home')),
//       Center(child : Choices()),
//       //Center(child : Text('Occasion')),
//       Center(child : Occasion()),
//       //Center(child : Text('Category')),
//       Center(child : Category()),
//       //Center(child : Text('History')),
//       Center(child : HistoryScreen()),
//       Center(child : Text('Profile')),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        resizeToAvoidBottomInset : false,
//        drawer: NavBar(),
//       appBar: AppBar(
//         title: Text("Gifts"),
//         backgroundColor: color,
//       ),
//       // body: Column(
//       //   children: <Widget>[
//       //     SizedBox(
//       //       height: 50,
//       //     ),
        
//       //    // GridDashboard(),
//       //   ],
//       // ),
//       // 
//        body: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 50,
//           ),
        
//            Category(),
        
//         ],
//       ),
//       // body : HistoryScreen(),
//        // body: MyInfoPage(),

//         // body: tabs[_currentIndex],


//       // body : Gender(),
//       //body: SignupPage(),
//       //body: AuthMethod(),
//      //body: Login(),

//     // body: Choices(),


//        bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: color,
//         // backgroundColor: Colors.blue,
//         iconSize: 30,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//             backgroundColor: Color(0xff453658)
//             ),
//              BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             title: Text('Search'),
//             backgroundColor: Color(0xff453658)
//             ),
//              BottomNavigationBarItem(
//             icon: Icon(Icons.category),
//             title: Text('Category'),
//             backgroundColor: Color(0xff453658)
//             ),
//              BottomNavigationBarItem(
//             icon: Icon(Icons.trending_up),
//             title: Text('History'),
//             backgroundColor: Color(0xff453658)
//             ),
//              BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             title: Text('Profile'),
//             backgroundColor: Color(0xff453658)
//             ),
//         ],
//            onTap: (index){
//           setState(() {
//             _currentIndex = index;
//           });
//         }
//         )
//     );
//   }
// }

class CategoryRender extends StatefulWidget {

  @override
  _CategoryRenderState createState() => _CategoryRenderState();
}

class _CategoryRenderState extends State<CategoryRender> {
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
       body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
        
           Category(),
          // Occasion(),
        ],
      ),
      // body : HistoryScreen(),
       // body: MyInfoPage(),

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
