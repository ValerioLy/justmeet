import 'package:flutter_numpad_widget/flutter_numpad_widget.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:justmeet/colors.dart';
import 'package:justmeet/login/confermapassword.dart';
import 'package:justmeet/login/login.dart';

import '../utils.dart';


TextEditingController n1 = new TextEditingController();
TextEditingController n2 = new TextEditingController();
TextEditingController n3 = new TextEditingController();
TextEditingController n4 = new TextEditingController();
TextEditingController n5 = new TextEditingController();
TextEditingController n6 = new TextEditingController();


class CodiceConferma extends StatefulWidget {
  CodiceConferma({Key key, this.title}) : super(key: key);

final String title;


@override
CodiceConfermaState createState() => new CodiceConfermaState();
}


class CodiceConfermaState extends State<CodiceConferma> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
        body: Container(
          color: Colors.white,
          child:
        CustomPaint(
        painter: CurvePainter(),
    child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding:EdgeInsets.only(top: 30),
                  child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Inserisci codice',style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal)),// icon
                          ],),
                      ],
                    ),
        ),
              Container(
                padding: EdgeInsets.only(left: 70, right: 70, top: 55),
                height: 45.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                        child: new Container(
                            padding: EdgeInsets.only(left: 5.0),
                            child: new TextField(textAlign: TextAlign.center, controller: n1,
                              maxLength: 1,
                            decoration: InputDecoration(counterText:"",enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ), hintStyle:TextStyle(color:Colors.white) ), style: TextStyle(color:Colors.white, fontSize: 20),)

                        )),
                    new SizedBox(width: 10.0),
                    new Flexible(
                        child: new Container(
                            padding: EdgeInsets.only(left: 5.0),
                            child: new TextField(textAlign:TextAlign.center, controller: n2, maxLength:1,decoration: InputDecoration(counterText:"", enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                    ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ), hintStyle:TextStyle(color:Colors.white) ), style: TextStyle(color:Colors.white, fontSize: 20),)
                        )),
                    new SizedBox(width: 10.0),
                    new Flexible(
                        child: new Container(
                            padding: EdgeInsets.only(left: 5.0),
                            child: new TextField(
                              textAlign: TextAlign.center,
                              controller: n3,
                              maxLength: 1,
                              decoration: InputDecoration(counterText:"", enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ), hintStyle:TextStyle(color:Colors.white) ), style: TextStyle(color:Colors.white, fontSize: 20),)
                        )),
                    new SizedBox(width: 10.0),
                    new Flexible(
                        child: new Container(
                            padding: EdgeInsets.only(left: 5.0),
                            child: new TextField(
                              textAlign: TextAlign.center,
                              controller: n4,
                              maxLength: 1,
                              decoration: InputDecoration(counterText:"",enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ), hintStyle:TextStyle(color:Colors.white) ), style: TextStyle(color:Colors.white, fontSize: 20),

                            ))),
                    new SizedBox(width: 10.0),
                    new Flexible(
                        child: new Container(
                            padding: EdgeInsets.only(left: 5.0),
                            child: new TextField(
                              textAlign: TextAlign.center,
                              controller: n5,
                              maxLength: 1,
                              decoration: InputDecoration(counterText:"",enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ), hintStyle:TextStyle(color:Colors.white) ), style: TextStyle(color:Colors.white, fontSize: 20),
                            ))),
                    new SizedBox(width: 10.0),
                    new Flexible(
                        child: new Container(
                            padding: EdgeInsets.only(left: 5.0),
                            child: new TextField(
                              textAlign: TextAlign.center,
                              controller: n6,
                              maxLength: 1,
                                decoration: InputDecoration(counterText:"",enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ), hintStyle:TextStyle(color:Colors.white) ), style: TextStyle(color:Colors.white, fontSize: 20),
                            ))),
                  ],
                ),
              ),

            Container( height:400,

              child:
                GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(70),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 3,
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red, // splash color
                          onTap: () {
                            _checkCode(1);
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('1',style: TextStyle(color: Colors.red, fontSize: 25, fontStyle: FontStyle.italic)),// icon
                              Text("O_O", style: TextStyle(color: Colors.red, fontSize: 9, fontStyle: FontStyle.italic)), // text
                            ],
                          ),
                        ),
                      ),),
                    ClipOval(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red, // splash color
                          onTap: () {
                            _checkCode(2);
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('2',style: TextStyle(color: Colors.red, fontSize: 25, fontStyle: FontStyle.italic)),// icon
                              Text("ABC", style: TextStyle(color: Colors.red, fontSize: 9, fontStyle: FontStyle.italic)), // text
                            ],
                          ),
                        ),
                      ),),
                    ClipOval(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red, // splash color
                          onTap: () {
                            _checkCode(3);
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('3',style: TextStyle(color: Colors.red, fontSize: 25, fontStyle: FontStyle.italic)),// icon
                              Text("DEF", style: TextStyle(color: Colors.red, fontSize: 9, fontStyle: FontStyle.italic)), // text
                            ],
                          ),
                        ),
                      ),),
                    ClipOval(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red, // splash color
                          onTap: () {
                            _checkCode(4);
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('4',style: TextStyle(color: Colors.red, fontSize: 25, fontStyle: FontStyle.italic)),// icon
                              Text("GHI", style: TextStyle(color: Colors.red, fontSize: 9, fontStyle: FontStyle.italic)), // text
                            ],
                          ),
                        ),
                      ),),
                    ClipOval(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red, // splash color
                          onTap: () {
                            _checkCode(5);
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('5',style: TextStyle(color: Colors.red, fontSize: 25, fontStyle: FontStyle.italic)),// icon
                              Text("JKL", style: TextStyle(color: Colors.red, fontSize: 9, fontStyle: FontStyle.italic)), // text
                            ],
                          ),
                        ),
                      ),),
                    ClipOval(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red, // splash color
                          onTap: () {
                            _checkCode(6);
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('6',style: TextStyle(color: Colors.red, fontSize: 25, fontStyle: FontStyle.italic)),// icon
                              Text("MNO", style: TextStyle(color: Colors.red, fontSize: 9, fontStyle: FontStyle.italic)), // text
                            ],
                          ),
                        ),
                      ),),
                    ClipOval(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red, // splash color
                          onTap: () {
                            _checkCode(7);
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('7',style: TextStyle(color: Colors.red, fontSize: 25, fontStyle: FontStyle.italic)),// icon
                              Text("PQRS", style: TextStyle(color: Colors.red, fontSize: 9, fontStyle: FontStyle.italic)), // text
                            ],
                          ),
                        ),
                      ),),
                    ClipOval(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red, // splash color
                          onTap: () {
                            _checkCode(8);
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('8',style: TextStyle(color: Colors.red, fontSize: 25, fontStyle: FontStyle.italic)),// icon
                              Text("TUV", style: TextStyle(color: Colors.red, fontSize: 9, fontStyle: FontStyle.italic)), // text
                            ],
                          ),
                        ),
                      ),),
                    ClipOval(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red, // splash color
                          onTap: () {
                            _checkCode(9);
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('9',style: TextStyle(color: Colors.red, fontSize: 25, fontStyle: FontStyle.italic)),// icon
                              Text("WXYZ", style: TextStyle(color: Colors.red, fontSize: 9, fontStyle: FontStyle.italic)), // text
                            ],
                          ),
                        ),
                      ),),

                    ClipOval(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red, // splash color
                          onTap: () {
                            _checkCode(0);
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('0',style: TextStyle(color: Colors.red, fontSize: 25, fontStyle: FontStyle.italic)),// icon
                              Text("+", style: TextStyle(color: Colors.red, fontSize: 9, fontStyle: FontStyle.italic)), // text
                            ],
                          ),
                        ),
                      ),),


                  ],
                ),),
                Container(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Row(
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
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => ConfermaPassword()));
                        },
                        child: Text(
                          "Fatto",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),)

                  ],
                ),


                ),

            ],
          ),
        ),



    ),),),);
  }
}

void _checkCode(int btnSelected) {

  switch (btnSelected) {
    case 0:
      checkField(btnSelected);
      break;
    case 1:
    checkField(btnSelected);
      break;
    case 2:
      checkField(btnSelected);
      break;
    case 3:
      checkField(btnSelected);
      break;
    case 4:
      checkField(btnSelected);
      break;
    case 5:
      checkField(btnSelected);
      break;
    case 6:
      checkField(btnSelected);
      break;
    case 7:
      checkField(btnSelected);
      break;
    case 8:
      checkField(btnSelected);
      break;
    case 9:
      checkField(btnSelected);
      break;
  }
}

void checkField (int btnSelected) {
  if(n1.text.toString().isEmpty){
    n1.text = btnSelected.toString();
  } else if(n2.text.toString().isEmpty) {
    n2.text = btnSelected.toString();
  }
  else if(n3.text.toString().isEmpty) {
    n3.text = btnSelected.toString();
  }
  else if(n4.text.toString().isEmpty) {
    n4.text = btnSelected.toString();
  }
  else if(n5.text.toString().isEmpty) {
    n5.text = btnSelected.toString();
  }
  else if(n6.text.toString().isEmpty) {
    n6.text = btnSelected.toString();
  }
}