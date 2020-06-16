import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:justmeet/carouselfirst.dart';
import 'dart:async';
import 'package:justmeet/colors.dart';
import 'package:flutter/services.dart';
import 'package:justmeet/register/genere.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:justmeet/register/research.dart';
import 'package:justmeet/services/db.dart';
import 'package:justmeet/utils.dart';
import 'package:justmeet/services/auth.dart';
void main() => runApp(Registrazione());

class Registrazione extends StatefulWidget {
  Registrazione({Key key, this.title}) : super(key: key);

  final String title;



  @override
  RegistrazioneState createState() => new RegistrazioneState();
}


class RegistrazioneState extends State<Registrazione>{

  DB db = new DB();

  bool value = false;

  Color colorRed = Colors.red;


  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController telefono = new TextEditingController();

  String nameCity = "";
  String currentCity = "Nanto";
  var _currencies = ["Nanto", "Dueville", "Montegrotto", "Arzignano"];

  Auth auth = new Auth();

  @override
  void initState() {
    db.getCountry();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dropDownValue = "Paese";
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Container(
            color: Colors.white,
            child: CustomPaint(
              painter: CurvePainter(),
            child:
            Padding(padding: EdgeInsets.only(top: 40),
              child:
              SingleChildScrollView(
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
                            Icons.supervised_user_circle,
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
                      Text("Registrati", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ],
                  ),),
                  Container(
                      padding: EdgeInsets.only(top: 30),
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
                          Expanded(child:TextField(controller:password, decoration: InputDecoration(hintText: "Password",  enabledBorder: UnderlineInputBorder(
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
                          Expanded(child:TextField(controller:email, decoration: InputDecoration(hintText: "Email",  enabledBorder: UnderlineInputBorder(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                            Container(
                              width: 100,
                              child: TextField(controller:telefono,
                                decoration: InputDecoration(
                                    hintText: "Telefono",  enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ), hintStyle:TextStyle(color:Colors.white) ), style: TextStyle(color:Colors.white),),
                            ),


                          new Theme(
                              data: Theme.of(context).copyWith(
                                 canvasColor: Colore.rosaScuro
                              ),
                              child: DropdownButton<String>(
                                underline: Container(
                                  decoration: const BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.white))
                                  ),
                                ),
                                iconEnabledColor: Colors.white,
                                iconDisabledColor: Colors.white,
                                items: _currencies.map((String dropDownStringItem){
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem, style: (TextStyle(color: Colors.white)),),
                                  );
                                }).toList(),
                                onChanged: (String newValue){

                                  setState(() {
                                    currentCity = newValue;
                                  });
                                },
                                value: currentCity,
                              ),// Your Dropdown Code Here,
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 20), child:
                        Row(
                          children: <Widget>[
                          Theme(
                              data: ThemeData(unselectedWidgetColor: Colors.white),
                              child: Checkbox(value: value,  tristate: false, activeColor: Colors.green, onChanged: (bool newValue) {
                                setState(() {
                                        value = newValue;
                                });
                              })),
                          Text("Termini e Condizioni", style: TextStyle(color:Colors.white)),
                          ],
                        ),),

                      Padding(padding: EdgeInsets.only(top: 20), child:
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
                              await auth.signUp(email.text, password.text);
                                if(value == true){
                                  if(username.text != "" && password.text != "" && email.text != "" && telefono.text != "" && currentCity != null) {
                                    db.createUser(username.text, email.text, telefono.text, currentCity, false, "", "", "", "", "", "", []);
                                    try {
                                      Navigator.push(context,
                                          MaterialPageRoute(
                                              builder: (context) => CarouselFirst(current: 1)));
                                    }
                                    catch(error){
                                      print(error);
                                    }
                                  }
                                  else {
                                    showAlertDialog(context, "campi mancanti", "Compilare i campi mancanti");
                                    print("campi mancanti");
                                  }
                                } else {
                                  print('accettare le termini e condizioni');
                                  showAlertDialog(context, 'attenzione', 'devi accettare i termini e condizioni');
                                }
                              },
                              child: Text(
                                "Avanti",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),)

                          ],
                      ),)
                    ],
                  )


                  ),

                ],
              ),
            ),),
          ),
          ),

        ),
      ),
    );

  }



}

