import 'package:flutter/material.dart';
import 'package:myapp/MyInfoGenderRender.dart';
import 'package:myapp/MyInfoPageRender.dart';
import 'package:myapp/genderGifts.dart';
import 'bottomNavigation.dart';
import 'package:http/http.dart' as http;
import 'navbar.dart';

class Gender extends StatefulWidget {

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String tabGenderIndexSelected = "";

  Future getData() async {
    print(tabGenderIndexSelected);
    http.Response response = await http.get(
      //  Uri.parse('http://10.0.2.2:8000/gender/?gender=$_tabGenderIndexSelected'),
       Uri.parse('http://127.0.0.1:8000/gender/$tabGenderIndexSelected'),
      headers: {
        "Accept": "application/json"
      }
      );
    print(response.body);

    // var data = json.decode(response.body);
    // //print(data["item_id"]);
    // setState(() {
    //     result = data["item_id"];
    // });
    
    //return response.body;
  }

  @override
  Widget build(BuildContext context) {
    //  return Scaffold(
    //   body: Container(
    //     margin: EdgeInsets.symmetric(horizontal: 10.0),
    //     child: Column(
    //       children: <Widget>[
    //         SizedBox(height: 30),
    //          Text(
    //       'Which gender do you prefer?',
    //         style: TextStyle(fontSize: 22, color: Colors.black),
    //       ),
    //       SizedBox(height: 30),
    //         choiceButton(context,'Male', Color(0xff453658), true),
    //         choiceButton(context,'Female', Colors.teal, true),
    //         choiceButton(context,'Others', Colors.blue, true),
    //       ],
    //     ),
    //     // child: Column (
    //     //   mainAxisAlignment: MainAxisAlignment.center,
    //     //   children: <Widget>[
    //     //     Container(
    //     //       height: 250,
    //     //       margin: EdgeInsets.symmetric(vertical: 20.0),
    //     //       child: Card (
    //     //         color: Colors.white,
    //     //         child: Padding (
    //     //           padding: const EdgeInsets.all(8.0),
    //     //           child: Center(
    //     //             child: FittedBox(
    //     //               child: Text(
    //     //                 'Male',
    //     //                 style: TextStyle(fontSize: 22, color: Colors.black),
    //     //               )
    //     //             ),
    //     //           ),
    //     //         ),
    //     //       ),
    //     //     ),
    //     //     choiceButton(context,'Male', Color(0xff453658), true),
    //     //     choiceButton(context,'Female', Colors.teal, true),
    //     //     choiceButton(context,'Others', Colors.blue, true),
    //         // choiceButton(context, appLogic.getStory()[2], () {
    //         //   setState(() {
    //         //     appLogic.nextStory(2);
    //         //   });
    //         // }, Colors.teal, appLogic.isVisible()),
    //         // choiceButton(context, appLogic.getStory()[3], () {
    //         //   setState(() {
    //         //     appLogic.nextStory(3);
    //         //   });
    //         // }, Colors.purple,  appLogic.isVisible()),
    //     //   ],
    //     // ),
    //   ),
    // );

    return Scaffold(
       resizeToAvoidBottomInset : false,
       drawer: NavBar(),
      appBar: AppBar(
        title: Text("Gender"),
        backgroundColor: Color(0xff453658),
      ),
    

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
             Text(
          'Which gender do you prefer?',
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
          SizedBox(height: 30),
            // choiceButton(context,'Male', Color(0xff453658), true,"Male"),
            // choiceButton(context,'Female', Colors.teal, true,"Female"),
            // choiceButton(context,'Unisex', Colors.blue, true,"Unisex"),
            Container (
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(bottom: 10.0),
    height: 70,
    
    child: Visibility(
      visible: true,
      child: RaisedButton(
      
        color: Color(0xff453658),
         onPressed: (){
           setState(() {
             tabGenderIndexSelected = "Male";
           });
            //getData();
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => GenderGifts(tabGenderIndexSelected : tabGenderIndexSelected))
           );
         },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: FittedBox(
          child: Text(
           'Male',
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
      
        color: Color(0xff453658),
         onPressed: (){
            setState(() {
              tabGenderIndexSelected = "Female";
            });
            //getData();
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => GenderGifts(tabGenderIndexSelected : tabGenderIndexSelected))
           );
         },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: FittedBox(
          child: Text(
           'Female',
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
      
        color: Color(0xff453658),
         onPressed: (){
            setState(() {
              tabGenderIndexSelected = "Unisex";
            });
            // getData();
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => GenderGifts(tabGenderIndexSelected : tabGenderIndexSelected))
           );
         },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: FittedBox(
          child: Text(
           'Unisex',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
      )
    ),
  ),
          ],
        ),
        // child: Column (
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Container(
        //       height: 250,
        //       margin: EdgeInsets.symmetric(vertical: 20.0),
        //       child: Card (
        //         color: Colors.white,
        //         child: Padding (
        //           padding: const EdgeInsets.all(8.0),
        //           child: Center(
        //             child: FittedBox(
        //               child: Text(
        //                 'Male',
        //                 style: TextStyle(fontSize: 22, color: Colors.black),
        //               )
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     choiceButton(context,'Male', Color(0xff453658), true),
        //     choiceButton(context,'Female', Colors.teal, true),
        //     choiceButton(context,'Others', Colors.blue, true),
            // choiceButton(context, appLogic.getStory()[2], () {
            //   setState(() {
            //     appLogic.nextStory(2);
            //   });
            // }, Colors.teal, appLogic.isVisible()),
            // choiceButton(context, appLogic.getStory()[3], () {
            //   setState(() {
            //     appLogic.nextStory(3);
            //   });
            // }, Colors.purple,  appLogic.isVisible()),
        //   ],
        // ),
      ),


       bottomNavigationBar: BottomNavigation(),
    );
  }
}

Widget choiceButton(context,title , color, visibilty,gender) {
  return Container (
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(bottom: 10.0),
    height: 70,
    
    child: Visibility(
      visible: visibilty,
      child: RaisedButton(
        
        color: color,
         onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyInfoPageRender())
          );
         },
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