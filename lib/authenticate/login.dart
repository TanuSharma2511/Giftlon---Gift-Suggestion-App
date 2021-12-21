// import 'package:flutter/material.dart';

// class Login extends StatelessWidget {
//   final color = Color(0xff453658);
//   var darkBlue = Color(0xFF60a0d7);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 40),
//           height: MediaQuery.of(context).size.height - 50,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   SizedBox(height: 35,),
//                   // Image.asset(
//                   //   'assets/logo2.jpg',
//                   //   // width: 42,
//                   // ),
//                   Text("Sign up",
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,

//                   ),),
//                   SizedBox(height: 20,),
//                   Text("Sign In to your account ",
//                     style: TextStyle(
//                         fontSize: 15,
//                         color:Colors.grey[700]),)


//                 ],
//               ),
//               Column(
//                 children: <Widget>[
//                  inputFile(label: "Email"),
//                   inputFile(label: "Password", obscureText: true),
            
//                 ],
//               ),
//               Container(
//                 padding: EdgeInsets.only(top: 3, left: 3),
//                 decoration:
//                 BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border(
//                       bottom: BorderSide(color: Colors.black),
//                       top: BorderSide(color: Colors.black),
//                       left: BorderSide(color: Colors.black),
//                       right: BorderSide(color: Colors.black),



//                     )

//                 ),
//                 child: MaterialButton(
//                   minWidth: double.infinity,
//                   height: 60,
//                   onPressed: () {},
//                   color: color,
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(50),

//                   ),
//                   child: Text(
//                     "Login", style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 18,
//                     color: Colors.white,

//                   ),
//                   ),

//                 ),
          
              
//               ),

//               Column(
//           //  mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//            children : <Widget>[
            
//              Text(
//                'or',
//                style: TextStyle(fontSize: 14.0, color : Colors.black87),
//                textAlign: TextAlign.center,
//              ),
           
//            SizedBox(
//            height: 50.0,
//            child : RaisedButton(
//              child :  Text('Sign In With Google',
//            style: TextStyle(
//              color: Colors.black87,
//             fontSize : 15.0),
//           ),
//               color : Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius : BorderRadius.all(
//                   Radius.circular(2.0),
//                 ),
//               ),
//               onPressed :(){},
//             ),
//     ),
//         SizedBox(height: 8.0),
//          SizedBox(
//            height: 50.0,
//            child : RaisedButton(
//               child :  Text('Sign In With Facebook',
//            style: TextStyle(
//              color: Colors.white,
//             fontSize : 15.0),
//           ),
      
//               color : Color(0xFF334D92),
//               shape: RoundedRectangleBorder(
//                 borderRadius : BorderRadius.all(
//                   Radius.circular(2.0),
//                 ),
//               ),
//               onPressed :(){},
//             ),
//     ),
       
            
//            ],
//          ),



//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text("Not having an account?"),
//                   Text("Register", style:TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 18
//                   ),
//                   )
//                 ],
//               )



//             ],

//           ),


//         ),

//       ),

//     );
//   }
// }



// // we will be creating a widget for text field
// Widget inputFile({label, obscureText = false})
// {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(
//         label,
//         style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w400,
//             color:Colors.black87
//         ),

//       ),
//       SizedBox(
//         height: 5,
//       ),
//       TextField(
//         obscureText: obscureText,
//         decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 0,
//                 horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color: Colors.grey[400]
//               ),

//             ),
//             border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey[400])
//             )
//         ),
//       ),
//       SizedBox(height: 10,)
//     ],
//   );
// }