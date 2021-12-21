import 'package:flutter/material.dart';
import 'package:myapp/MyInfoGenderRender.dart';
import 'package:myapp/MyInfoPageRender.dart';
import 'bottomNavigation.dart';
import 'navbar.dart';

class Gender extends StatelessWidget {
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
        title: Text("Gifts"),
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
            choiceButton(context,'Male', Color(0xff453658), true),
            choiceButton(context,'Female', Colors.teal, true),
            choiceButton(context,'Others', Colors.blue, true),
  //           Container (
  //   width: MediaQuery.of(context).size.width,
  //   margin: EdgeInsets.only(bottom: 10.0),
  //   height: 70,
    
  //   child: Visibility(
  //     visible: true,
  //     child: RaisedButton(
      
  //       color: Color(0xff453658),
  //        onPressed: () => Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => MyInfoGenderRender())
  //         ),
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
            MaterialPageRoute(builder: (context) => MyInfoPageRender())
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