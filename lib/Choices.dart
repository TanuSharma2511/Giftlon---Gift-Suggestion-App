import 'package:flutter/material.dart';
import 'package:myapp/CategoryRender.dart';
import 'package:myapp/HistoryScreen.dart';
import 'package:myapp/InterestRender.dart';
import 'package:myapp/OccasionRender.dart';
import 'gender.dart';

var orange = Color(0xFFfc9f6a);
var pink = Color(0xFFee528c);
var blue = Color(0xFF8bccd6);
var darkBlue = Color(0xFF60a0d7);
var valueBlue = Color(0xFF5fa0d6);

// class Choices extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//         //  itemCount: 3,
//         //  itemBuilder: (_, index){
//         //    return ListTile(
//         //      title: Text("hello world"),
//         //      subtitle: Text("subtitle"),
//         //     //  leading: Icon(Icons.thumb_up),
//         //      trailing: Icon(Icons.arrow_forward),
//         //    );
//         //  }
//         padding: EdgeInsets.zero,
//         children: [
//           ListTile(
//             leading: Icon(Icons.favorite),
//             title: Text('Gender'),
//             onTap: () => Navigator.push(context,
//                MaterialPageRoute(builder: (context) => Gender())
//              ),
//           ),
//           ListTile(
//             leading: Icon(Icons.person),
//             title: Text('Age Group'),
//             onTap: () => Navigator.push(context,
//                MaterialPageRoute(builder: (context) => Category())
//              ),
//           ),
//           ListTile(
//             leading: Icon(Icons.category),
//             title: Text('Occasion'),
//              onTap: () => Navigator.push(context,
//                MaterialPageRoute(builder: (context) => Occasion())
//              ),
//           ),
//         ],
//      );
//   }
// }

class Choices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
             Text(
          'Select your choice',
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
          SizedBox(height: 30),
            // choiceButton(context,'Gender', Color(0xff453658), true),
            // choiceButton(context,'Age Group', Colors.teal, true),
            // choiceButton(context,'Occasion', Colors.blue, true),

      Container (
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(bottom: 10.0),
    height: 70,
    child: Visibility(
      visible: true,
      child: RaisedButton(
        color: Color(0xff453658),
       onPressed: () => Navigator.push(context,
               MaterialPageRoute(builder: (context) => Gender())
             ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: FittedBox(
          child: Text(
           'Gender',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
      )
    ),
  ),

Container (
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(bottom: 10.0),
    height: 70,
    child: Visibility(
      visible: true,
      child: RaisedButton(
        color: Colors.teal,
       onPressed: () => Navigator.push(context,
               MaterialPageRoute(builder: (context) => OccasionRender())
             ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: FittedBox(
          child: Text(
           'Occasion',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
      )
    ),
  ),

Container (
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(bottom: 10.0),
    height: 70,
    child: Visibility(
      visible: true,
      child: RaisedButton(
        color: Colors.blue,
       onPressed: () => Navigator.push(context,
               MaterialPageRoute(builder: (context) => CategoryRender())
             ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: FittedBox(
          child: Text(
           'Age Group',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
      )
    ),
  ),
 Container (
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(bottom: 10.0),
    height: 70,
    child: Visibility(
      visible: true,
      child: RaisedButton(
        color: Colors.blueGrey,
       onPressed: () => Navigator.push(context,
               MaterialPageRoute(builder: (context) => InterestRender())
             ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: FittedBox(
          child: Text(
           'Interest',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
      )
    ),
  ),


          ],
        ),
      ),
    );

  }
}

Widget choiceButton(context,title , color, visibilty) {
  return Container (
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(bottom: 10.0),
    height: 70,
    child: Visibility(
      visible: visibilty,
      child: RaisedButton(
        color: color,
       onPressed: () => Navigator.push(context,
               MaterialPageRoute(builder: (context) => HistoryScreen())
             ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: FittedBox(
          child: Text(
           title,
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
      )
    ),
  );
}





