import 'dart:async';
import 'package:flutter/material.dart';
import 'package:justmeet/colors.dart';
import 'package:justmeet/interessi.dart';
import 'package:justmeet/register/research.dart';
import 'package:justmeet/utils.dart';

void main() => runApp(Homeafterlogin());

class Homeafterlogin extends StatefulWidget {
  @override
  _HomeafterloginState createState() => _HomeafterloginState();
}


class _HomeafterloginState extends State<Homeafterlogin> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          body: Container(
            color: Colors.white,
            child:
            CustomPaint(
        painter: CurvePainter(),
    child: Container(
              padding: EdgeInsets.only(top: 120, bottom: 60),
              child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('assets/images/fork.png'), width: 200, height: 150,),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Justmeet", style: TextStyle(fontSize: 28, color: Colors.white,)),
                    ],
                  ),),
                Padding(padding: EdgeInsets.only(top: 40),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Benvenuto su Justmeet!", style: TextStyle(fontSize: 20, color: Colors.white,)),
                  ],
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Incontra la tua anima gemella!", style: TextStyle(fontSize: 20, color: Colors.white,)),
                  ],
                )
              ],
            ),
          ),),
          ),

        ),
      ),
    );
  }
}