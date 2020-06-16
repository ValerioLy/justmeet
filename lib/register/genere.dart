import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:justmeet/carouselfirst.dart';
import 'dart:async';
import 'package:justmeet/colors.dart';
import 'package:flutter/services.dart';
import 'package:justmeet/register/infoaccount.dart';
import 'package:justmeet/register/research.dart';
import 'package:justmeet/services/db.dart';
import 'package:justmeet/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Genere extends StatefulWidget {
  Genere({Key key, this.title}) : super(key: key);

  final String title;

  @override
  GenereState createState() => new GenereState();
}


class GenereState extends State<Genere>{

  DB db = new DB();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  bool _isVisible = false;
  bool _isVisible2 = false;
  String genere = '';

  void showToast() {
    setState(() {
        _isVisible = !_isVisible;
    });
  }
  void showToast2() {
    setState(() {
      _isVisible2 = !_isVisible2;
    });
  }

  void checkGenere() {
   if(_isVisible == true){
     genere = 'uomo';
   } else if(_isVisible2 == true){
     genere = 'femmina';
   }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          body: Container(
            color: Colore.rosaScuro,
            child:
            CustomPaint(
            painter: CurveMidPainter(),
            child:
            Padding(padding: EdgeInsets.all(60),
              child:
            Column(
              children: <Widget>[
                Container(
                  child: Text("Qual'è il tuo genere?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                ),
                Expanded(flex: 3,
                child:  Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ClipOval(
                        child:
                        Container(
                          height: 125,
                          width: 125,
                          color: Colore.rosaScuro,
                          child:  Builder(
                              builder: (context) =>
                                  GestureDetector(
                                    onTap: () {
                                      if(_isVisible2 == false){
                                        showToast();
                                      }
                                    }, // handle your image tap here
                                      child: new Stack(
                                        children: <Widget>[
                                          new Positioned(
                                            left:1,
                                            right: 1,
                                            child: Image.asset(
                                              'assets/images/man.png',
                                              width: 100,
                                              height: 120,//,// this is the solution for border
                                            ),
                                          ),

                                          Visibility (
                                              visible: _isVisible,
                                              child:  new Positioned(
                                                left: 75,
                                                top: 70,
                                                child: Image.asset(
                                                  'assets/images/true.png',
                                                  width: 40,
                                                  height: 50,// this is the solution for border
                                                ),
                                              ),
                                              replacement: new Positioned(
                                                left: 75,
                                                top: 70,
                                                child: Image.asset(
                                                  'assets/images/true.png',
                                                  width: 0,
                                                  height: 0,// this is the solution for border
                                                ),
                                              ),
                                          ),



                                        ],
                                      )

                                  )

                          ),
                        ),

                      ),
                      ClipOval(
                        child:
                        Container(
                          height: 125,
                          width: 125,
                          color: Colore.rosaMedio,
                          child:  Builder(
                              builder: (context) =>
                                  GestureDetector(
                                    onTap: () {
                                      if(_isVisible == false){
                                        showToast2();
                                      }
                                    }, // handle your image tap here
                                    child:new Stack(
                                      children: <Widget>[
                                        new Positioned(
                                          left:1,
                                          right: 1,
                                          child: Image.asset(
                                            'assets/images/woman.png',
                                            width: 100,
                                            height: 120,//,// this is the solution for border
                                          ),
                                        ),

                                        Visibility (
                                          visible: _isVisible2,
                                          child:  new Positioned(
                                            left: 75,
                                            top: 70,
                                            child: Image.asset(
                                              'assets/images/true.png',
                                              width: 40,
                                              height: 50,// this is the solution for border
                                            ),
                                          ),
                                          replacement: new Positioned(
                                            left: 75,
                                            top: 70,
                                            child: Image.asset(
                                              'assets/images/true.png',
                                              width: 0,
                                              height: 0,// this is the solution for border
                                            ),
                                          ),
                                        ),



                                      ],
                                    )
                                  )

                          ),
                        ),

                      ),
                    ],
                  ),),),

                Container(
                  child:
                Padding(padding: EdgeInsets.only(top: 30), child:
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
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          if(_isVisible == true || _isVisible2 == true){
                            checkGenere();
                            db.updateUser(genere);
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => CarouselFirst(current: 2,)));
                          } else{
                            showAlertDialog(context, 'attenzione', 'scegliere il genere');
                          }

                        },
                        child: Text(
                          "Avanti",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),)

                  ],
                ),),),
              ],
            ),
                ),),),
          ),
        ),
      
    );
  }
}