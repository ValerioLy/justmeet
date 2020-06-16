import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:justmeet/colors.dart';
import 'package:justmeet/domande.dart';
import 'package:justmeet/register/CardInsertImage.dart';
import 'package:justmeet/register/research.dart';
import 'package:justmeet/services/auth.dart';
import 'package:justmeet/services/db.dart';
import 'package:uuid/uuid.dart';
import '../utils.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart'; // For File Upload To Firestore
import 'package:image_picker/image_picker.dart'; // For Image Picker
import 'package:path/path.dart' as Path;


void main() => runApp(Infoaccount());


class Infoaccount extends StatefulWidget {
  @override
  _InfoaccountState createState() => _InfoaccountState();
}


class _InfoaccountState extends State<Infoaccount> {

  String currentEta = null;
  var _eta = ["18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"
  "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55",
  "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75",
  "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95",
  "96", "97", "98", "99", "100"];

  String currentStatus = null;
  var _status = ["single", "fidanzato/a", "sposato/a"];

  TextEditingController nome = new TextEditingController();
  TextEditingController citta = new TextEditingController();
  TextEditingController descrizione = new TextEditingController();

  List<CardInsertImage> cards=[CardInsertImage(),CardInsertImage(),CardInsertImage(),CardInsertImage(),CardInsertImage(),CardInsertImage(),];


  DB db = new DB();
  final Auth auth = Auth();




  void avanti() async{
    FirebaseUser user = await auth.getCurrentUser();
    print(user.uid);
    cards.forEach((card)=>card.upload());
    db.updateUserInfo(nome.text, currentEta, citta.text, currentStatus, descrizione.text);
  }

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
        painter: CurveMid2Painter(),
        child:
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 30),
              child:
            Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(image: AssetImage('assets/images/fork.png'), width: 60, height: 40,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Aggiungi Foto", style: TextStyle(color: Colors.white, fontSize: 15)),
                          ],
                        ),
                        Container(
                          height: 110.0,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: cards
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Informazioni profilo", style: TextStyle(color: Colors.black, fontSize: 17)),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child:  Row(
                                children: <Widget>[
                                  Text("Nome:",style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(width: 50, child:
                                  TextField(controller: nome, decoration: InputDecoration(hintText: "",
                                  focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),),),)
                                ],
                              ),
                            ),
                           Expanded(
                             flex: 2,
                             child:   Row(
                               children: <Widget>[
                                 Text("Età:", style: TextStyle(fontWeight: FontWeight.bold),),
                                 new Theme(
                                   data: Theme.of(context).copyWith(
                                       canvasColor: Colore.rosaScuro
                                   ),
                                   child: DropdownButton<String>(

                                     iconEnabledColor: Colors.black,
                                     iconDisabledColor: Colors.black,
                                     items: _eta.map((String dropDownStringItem){
                                       return DropdownMenuItem<String>(
                                         value: dropDownStringItem,
                                         child: Text(dropDownStringItem, style: (TextStyle(color: Colors.black)),),
                                       );
                                     }).toList(),
                                     onChanged: (String newValue){

                                       setState(() {
                                         currentEta = newValue;
                                       });
                                     },
                                     value: currentEta,
                                   ),// Your Dropdown Code Here,
                                 ),

                               ],
                             ),

                           ),
                          ],
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child:  Row(
                                children: <Widget>[
                                  Text("Città:", style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(width: 50, child:
                                  TextField(controller: citta, decoration: InputDecoration(hintText: "",
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),),),)
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child:   Row(
                                children: <Widget>[
                                  Text("Status:", style: TextStyle(fontWeight: FontWeight.bold),),
                                  new Theme(
                                    data: Theme.of(context).copyWith(
                                        canvasColor: Colore.rosaScuro
                                    ),
                                    child: DropdownButton<String>(
                                      iconEnabledColor: Colors.black,
                                      iconDisabledColor: Colors.black,
                                      items: _status.map((String dropDownStringItem){
                                        return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(dropDownStringItem, style: (TextStyle(color: Colors.black)),),
                                        );
                                      }).toList(),
                                      onChanged: (String newValue){

                                        setState(() {
                                          currentStatus = newValue;
                                        });
                                      },
                                      value: currentStatus,
                                    ),// Your Dropdown Code Here,
                                  ),
                                ],
                              ),

                            ),
                          ],
                        ),
                    Padding(padding: EdgeInsets.only(top: 10, bottom: 5), child:
                  Card(
                    color: Colore.rosaChiaro,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colore.rosaScuro)
                    ),
                    child: Container(
                      height: 150,
                      child: SingleChildScrollView(
                        child: TextField(
                          controller: descrizione,
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),),

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
                                onPressed: () async{

                                 await avanti();

                                  Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) => Research()));
                                },
                                child: Text(
                                  "Avanti",
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ),)

                          ],
                        ),
                      ],
                    ),
                ),
                ),
              ],
          ),
          ),),
        ),
      ),),
    );
  }
}