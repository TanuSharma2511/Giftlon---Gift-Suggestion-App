import 'package:flutter/material.dart';

class AuthMethod extends StatelessWidget {
final color = Color(0xff453658);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title : Text('Gift Suggestion App'),
         backgroundColor: color,
         elevation: 2.0,
       ),

       body: _buildContent(),
       backgroundColor: Colors.white,
       );
  }


  Widget _buildContent(){
    return Padding(
         padding : EdgeInsets.all(16.0),
         child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
           children : <Widget>[
            // Text(
            //   'Sign in',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontSize: 32.0,
            //     fontWeight : FontWeight.w600,
            //   ),
            //   ),
               Image.asset(
                   'assets/logo2.jpg',
                    width: 42,
                  ),
                  // SizedBox(
                  //   height: 14,
                  // ),
           
           SizedBox(
           height: 50.0,
           child : RaisedButton(
             child :  Text('Sign In With Google',
           style: TextStyle(
             color: Colors.black87,
            fontSize : 15.0),
          ),
      //         child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // children: <Widget>[
      //   // Image.asset(assetName),
      //     Text('Sign In With Google',
      //      style: TextStyle(
      //        color: Colors.black87,
      //       fontSize : 15.0),
      //     ),
      //     Opacity(
      //       opacity: 0.0,
      //       child : Image.asset(''),
      //       ),
      // ],
      // ),
              color : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius : BorderRadius.all(
                  Radius.circular(2.0),
                ),
              ),
              onPressed :(){},
            ),
    ),
        SizedBox(height: 8.0),
         SizedBox(
           height: 50.0,
           child : RaisedButton(
              child :  Text('Sign In With Facebook',
           style: TextStyle(
             color: Colors.white,
            fontSize : 15.0),
          ),
      //         child: Row(
      // // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // children: <Widget>[
      //   // Image.asset(assetName),
      //     Text('Sign In With Facebook',
      //      style: TextStyle(
      //        color: Colors.white,
      //       fontSize : 15.0),
      //     ),
      //     // Opacity(
      //     //   opacity: 0.0,
      //     //   child : Image.asset(''),
      //     //   ),
      // ],
      // ),
              color : Color(0xFF334D92),
              shape: RoundedRectangleBorder(
                borderRadius : BorderRadius.all(
                  Radius.circular(2.0),
                ),
              ),
              onPressed :(){},
            ),
    ),
        SizedBox(height: 8.0),
         SizedBox(
           height: 50.0,
           child : RaisedButton(
             child :  Text('Sign In With Email',
           style: TextStyle(
             color: Colors.white,
            fontSize : 15.0),
          ),
      //         child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // children: <Widget>[
      //   // Image.asset(assetName),
      //     Text('Sign In With Email',
      //      style: TextStyle(
      //        color: Colors.white,
      //       fontSize : 15.0),
      //     ),
      //     Opacity(
      //       opacity: 0.0,
      //       child : Image.asset(''),
      //       ),
      // ],
      // ),
              color : Colors.teal[700],
              shape: RoundedRectangleBorder(
                borderRadius : BorderRadius.all(
                  Radius.circular(2.0),
                ),
              ),
              onPressed :(){},
            ),
    ),
            // SignInButton(
            //     text: 'Sign In With Google',
            //     textColor: Colors.black87,
            //     color: Colors.white,
            //     onPressed: _signInWithGoogle,
            // ),
            // SizedBox(height: 8.0),
            //  SignInButton(
            //     text: 'Sign In With Facebook',
            //     textColor: Colors.white,
            //     color: Color(0xFF334D92),
            //     onPressed: _signInWithFacebook,
            // ),
            // SizedBox(height: 8.0),
            //  SignInButton(
            //     text: 'Sign In With Email',
            //     textColor: Colors.white,
            //     color: Colors.teal[700],
            //     onPressed: (){},
            // ),
             SizedBox(height: 8.0),
             Text(
               'or',
               style: TextStyle(fontSize: 14.0, color : Colors.black87),
               textAlign: TextAlign.center,
             ),
              SizedBox(height: 8.0), 
               SizedBox(
           height: 50.0,
           child : RaisedButton(
             child :  Text('Go Anonymous',
           style: TextStyle(
             color: Colors.black,
            fontSize : 15.0),
          ),
      //         child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // children: <Widget>[
      //   // Image.asset(assetName),
      //     Text('Go Anonymous',
      //      style: TextStyle(
      //        color: Colors.black,
      //       fontSize : 15.0),
      //     ),
      //     Opacity(
      //       opacity: 0.0,
      //       child : Image.asset(''),
      //       ),
      // ],
      // ),
              color : Colors.lime[300],
              shape: RoundedRectangleBorder(
                borderRadius : BorderRadius.all(
                  Radius.circular(2.0),
                ),
              ),
              onPressed :(){},
            ),
    ),
            //  SignInButton(
            //     text: 'Go Anonymous',
            //     textColor: Colors.black,
            //     color: Colors.lime[300],
            //     onPressed: _signInAnonymously,
            // ),
           ],
         ),
       );
  }

}