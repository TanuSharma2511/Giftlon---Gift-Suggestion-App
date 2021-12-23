import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:myapp/InfoScreen/info_screen.dart';
import 'package:myapp/navbar.dart';

class ShareButton extends StatelessWidget {
  final VoidCallback onClicked;

  const ShareButton({
    Key key,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      
        color: Color(0xff453658),
         onPressed: onClicked,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: FittedBox(
          child: Text(
           'SHARE',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
      );
  }
}