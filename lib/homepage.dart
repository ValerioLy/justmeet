import 'dart:async';
import 'package:flutter/material.dart';
import 'package:justmeet/carouselfirst.dart';
import 'package:justmeet/services/auth.dart';
import 'package:justmeet/utils.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'colors.dart';
import 'package:justmeet/register/registrazione.dart';
import 'package:justmeet/login/login.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;



  @override
  HomePageState createState() => new HomePageState();
}


class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
        color: Colors.white,
        child: Scaffold(
        body: Container(

    ),),),
    );
  }


}