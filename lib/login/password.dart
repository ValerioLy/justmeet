import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:justmeet/colors.dart';
import 'package:justmeet/login/numpad.dart';
import 'package:justmeet/services/auth.dart';
import '../utils.dart';
import 'package:justmeet/utils.dart';



class Password extends StatelessWidget{

  TextEditingController emailText = new TextEditingController();

  Auth auth = new Auth();


  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          body:
          Container(
            color: Colors.white,
            child:
            CustomPaint(
        painter: CurvePainter(),
          child:
            Padding(padding: EdgeInsets.only(top: 40),
              child:
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          child:
                          Icon(
                            Icons.vpn_key,
                            color: Colors.red,
                            size: 50.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding( padding:EdgeInsets.only(top: 10),child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Log in", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ],
                  ),),
                  
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                    child:
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Reimposta Password", style: TextStyle(color:Colors.white)),
                          ],
                        ),
                        Padding( padding: EdgeInsets.only(top: 10), child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Inserisci la tua e-mail e ti invieremo un codice \nper accedere di nuovo al tuo account", style: TextStyle(color:Colors.white)),
                          ],
                        )
                  ),
                        Padding( padding: EdgeInsets.only(top: 50),
                          child:
                        Row(
                          children: <Widget>[
                            Expanded(child:TextField(controller:emailText, decoration: InputDecoration(hintText: "Email",  enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ), hintStyle:TextStyle(color:Colors.white) ), style: TextStyle(color:Colors.white),)),

                          ],
                        ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 150), child:
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
                                onPressed: () async {
                                  try {
                                    print('reset password inviato tramite email');
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) => CodiceConferma()));
                                  } catch(error){
                                   print("password non resettata errore");
                                  }
                                },
                                child: Text(
                                  "Invia",
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              ),)

                          ],
                        ),),
                      ],
                    )

                  ),
                ],
              ),
            ),
            ),
          ),
        ),
      ),
    );

  }

}