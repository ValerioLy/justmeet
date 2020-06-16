import 'dart:async';
import 'package:flutter/material.dart';
import 'package:justmeet/colors.dart';
import 'package:justmeet/homeafterlogin.dart';
import 'package:justmeet/interessi.dart';
import 'package:justmeet/register/research.dart';
import 'package:justmeet/utils.dart';




class Notifiche extends StatefulWidget {
  @override
  _NotificheState createState() => _NotificheState();
}


class _NotificheState extends State<Notifiche> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          body:
        CustomPaint(
        painter: CurveTopPainter(),
    child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colore.grigio,
                        child:
                        Icon(
                          Icons.supervised_user_circle,
                          color: Colors.red,
                          size: 50.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Attiva notifiche push", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(

                      child:  ClipOval(
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colore.rosaScuro,
                          child:
                          Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 120.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 145,
                          child:FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: BorderSide(color: Colors.white)
                            ),
                            color: Colore.rosaScuro,
                            textColor: Colors.white,
                            disabledColor: Colors.grey,
                            disabledTextColor: Colors.black,
                            padding: EdgeInsets.all(8.0),
                            splashColor: Colors.white,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Homeafterlogin()));
                            },
                            child: Text(
                              "Attiva",
                              style: TextStyle(fontSize: 13.0),
                            ),
                          ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 145,
                          child:FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: BorderSide(color: Colore.rosaScuro)
                            ),
                            color: Colors.white,
                            textColor: Colors.black,
                            disabledColor: Colors.grey,
                            disabledTextColor: Colors.black,
                            padding: EdgeInsets.all(8.0),
                            splashColor: Colors.white,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Homeafterlogin()));
                            },
                            child: Text(
                              "Non adesso",
                              style: TextStyle(fontSize: 13.0),
                            ),
                          ),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        ),),
    );
  }
}