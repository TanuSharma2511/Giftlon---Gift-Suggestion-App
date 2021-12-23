import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  String input = "";
  String result = "";
  var _tabGenderIndexSelected = 1;
  var _listGenderTabToggle = ["Male", "Female", "Unisex"];
  String _tabAgeGroupIndexSelected = "";
  //var _listAgeGroupTabToggle = ["Kid(0-11 yrs)", "Teen(13-18 yrs)", "Youth(19-38 yrs)", "Adult(39-59 yrs)", "Elderly(60+ yrs)"];
  String _tabOccasionIndexSelected = "";
  //var _listOccasionTabToggle = ["Birthday", "Anniversary", "Graduation", "Housewarming", "Valentines Day"];
  String _genderSelected = "";
  List<String> text = ['T','S','H','Y'];

  void GenderSelect(){
    String str = '';
    if (_tabGenderIndexSelected == 0) {
      str = "Male";
    }
    else if (_tabGenderIndexSelected == 1) {
      str = "Female";
    }
    else if (_tabGenderIndexSelected == 2) {
      str = "Unisex";
    }
    print (str);
    setState((){
        _genderSelected = str;
      });

  }


  void _submit() {
    print(_tabAgeGroupIndexSelected);
    print(_tabOccasionIndexSelected);
    GenderSelect();
    getData();
  }


  Future getData() async {
    http.Response response = await http.get(
      Uri.parse('http://10.0.2.2:8000/?gender=$_genderSelected&age=$_tabAgeGroupIndexSelected&occasion=$_tabOccasionIndexSelected'),
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

    
    return SafeArea( 
       child: Container(
      //    child: Padding(
      //       padding: EdgeInsets.fromLTRB(50, 40, 50, 40),
      //       child: ListView(
      //           children: <Widget>[
      //             Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: <Widget>[
      //                 Text("Gender:",
      //                 textScaleFactor: 1.8,
      //                 ),
      //                 SizedBox(
      //                   height: 20,
      //                 ),
      //                CustomRadioButton(
      //                 elevation: 0,
      //                 absoluteZeroSpacing: false,
      //                 unSelectedColor: Theme.of(context).canvasColor,
      //                 buttonLables: [
      //                   "Male", 
      //                   "Female", 
      //                   "Unisex", 
      //                 ],
      //                 buttonValues: [
      //                    "Male", 
      //                   "Female", 
      //                   "Unisex"
      //                 ],
      //                 buttonTextStyle: ButtonTextStyle(
      //                     selectedColor: Colors.white,
      //                     unSelectedColor: Colors.black,
      //                     textStyle: TextStyle(fontSize: 16)),
      //                 radioButtonValue: (value) {
      //                   // print(value);
      //                   setState(() {
      //                     _tabGenderIndexSelected = value;
      //                   });
      //                   print(_tabGenderIndexSelected);
      //                 },
      //                 selectedColor: Colors.lightBlue.shade400,
      //                 horizontal: true,
      //                 height: 50,
      //                 width: 20,
      //                 padding: 6,
      //               ),
      //               ]
      //         ), 
      //         SizedBox(
      //           height: 60,
      //         ), 
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget> [
      //               Text("Age Group:",
      //                  textScaleFactor: 1.8),
      //               // SizedBox(
      //               //     height: 20,
      //               //   ),
      //               CustomRadioButton(
      //                 elevation: 0,
      //                 absoluteZeroSpacing: false,
      //                 unSelectedColor: Theme.of(context).canvasColor,
      //                 buttonLables: [
      //                   "Kid(0-11 yrs)", 
      //                   "Teen(13-18 yrs)", 
      //                   "Youth(19-38 yrs)", 
      //                   "Adult(39-59 yrs)", 
      //                   "Elderly(60+ yrs)"
      //                 ],
      //                 buttonValues: [
      //                   "Kid", 
      //                   "Teen", 
      //                   "Youth", 
      //                   "Adult", 
      //                   "Elderly"
      //                 ],
      //                 buttonTextStyle: ButtonTextStyle(
      //                     selectedColor: Colors.white,
      //                     unSelectedColor: Colors.black,
      //                     textStyle: TextStyle(fontSize: 16)),
      //                 radioButtonValue: (value) {
      //                   // print(value);
      //                   setState(() {
      //                     _tabAgeGroupIndexSelected = value.toString();
      //                   });
      //                   print(_tabAgeGroupIndexSelected);
      //                 },
      //                 selectedColor: Colors.lightBlue.shade400,
      //                 horizontal: true,
      //                 height: 50,
      //                 width: 20,
      //                 padding: 6,
      //               ),
      //              SizedBox(
      //               height: 30,
      //             ),
      //              Text("Occasion:",
      //                 textScaleFactor: 1.8),
      //                 SizedBox(
      //                       height: 0,
      //                     ),
      //                 CustomRadioButton(
      //                     elevation: 0,
      //                     absoluteZeroSpacing: false,
      //                     unSelectedColor: Theme.of(context).canvasColor,
      //                     buttonLables: [
      //                       "Birthday", 
      //                       "Anniversary", 
      //                       "Graduation", 
      //                       "Housewarming", 
      //                       "Valentines Day"
      //                     ],
      //                     buttonValues: [
      //                       "Birthday", 
      //                       "Anniversary", 
      //                       "Graduation", 
      //                       "Housewarming", 
      //                       "Valentines Day"
      //                     ],
      //                     buttonTextStyle: ButtonTextStyle(
      //                         selectedColor: Colors.white,
      //                         unSelectedColor: Colors.black,
      //                         textStyle: TextStyle(fontSize: 16)),
      //                     radioButtonValue: (value) {
      //                       //print(value);
      //                       setState(() {
      //                           _tabOccasionIndexSelected = value.toString();
      //                       });
      //                       print(_tabOccasionIndexSelected);
      //                     },
      //                     selectedColor: Colors.lightBlue.shade400,
      //                     horizontal: true,
      //                     height: 50,
      //                     padding: 6,
      //                   ),
      //                 ]
      //                 ),
      //                 SizedBox(
      //                       height: 30,
      //                     ),
      //                 Container(
      //                   height: 40,
      //                   child: RaisedButton(
      //                       onPressed: _submit,
      //                   //     style: ElevatedButton.styleFrom(
      //                   //       primary: const Color(0xff2f7aeb),
      //                   //       onPrimary: Colors.white,
      //                   // ),
      //                    color: Color(0xff453658),
      //                       child: Text("Submit",
      //                       style: TextStyle(fontSize: 25, color: Colors.white),),
      //                     ),
      //                 ),
      //             ]
      //         ),
      //       ),
          ),
         );
    
  }
}


