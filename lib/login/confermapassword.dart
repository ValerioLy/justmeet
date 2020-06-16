import 'package:flutter/material.dart';
import 'dart:async';
import 'package:justmeet/colors.dart';
import 'package:justmeet/login/login.dart';
import 'package:justmeet/login/password.dart';
import 'package:justmeet/services/auth.dart';

import '../utils.dart';


class ConfermaPassword extends StatelessWidget{

  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confermapassword = new TextEditingController();

  Auth auth = new Auth();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Container(
            color: Colors.white,
            child:
            CustomPaint(
        painter: CurvePainter(),
    child:
            Padding(padding: EdgeInsets.only(top: 40),
              child:Column(
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
                    padding: EdgeInsets.only(top: 120),
                    margin: EdgeInsets.only(left: 50, right: 50), child:
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(child:TextField(controller:username, decoration: InputDecoration(hintText: "Username",  enabledBorder: UnderlineInputBorder(
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
                      Row(
                        children: <Widget>[
                          Expanded(child:TextField(controller:password, decoration: InputDecoration(hintText: "Password", suffixIcon: Icon(Icons.visibility), enabledBorder: UnderlineInputBorder(
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
                      Row(
                        children: <Widget>[
                          Expanded(child:TextField(controller:confermapassword, decoration: InputDecoration(hintText: "Conferma Password", suffixIcon: Icon(Icons.visibility_off), enabledBorder: UnderlineInputBorder(
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


                    ],
                  ),
                  ),
                      Padding(padding: EdgeInsets.only(top: 80), child:
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
                                try {
                                  assert(username != null);
                                  if(password.text == confermapassword.text){
                                    print('reset password inviato tramite email');
                                    auth.sendPasswordResetEmail(username.text);
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  }else {
                                    showAlertDialog(context, "attenzione", "le password devono essere uguali");
                                    print("le password devono essere uguali");
                                  }

                                } catch(error){
                                  print("password non resettata errore");

                                }
                              },
                              child: Text(
                                "Fatto",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),)

                        ],
                      ),),
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