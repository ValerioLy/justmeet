import 'dart:async';
import 'package:flutter/material.dart';
import 'package:justmeet/colors.dart';
import 'package:justmeet/interessi.dart';
import 'package:justmeet/register/research.dart';
import 'package:justmeet/utils.dart';
import 'Models/domanda.dart';


void main() => runApp(prova());

class prova extends StatefulWidget {
  @override
  _provaState createState() => _provaState();
}

class _provaState extends State<prova> {


  int count = 0;
  bool value = false;
  bool value2 = false;
  bool value3 = false;


  List<DomandaClass> list = [
    DomandaClass("Qual'è il tuo drink preferito","Spritz","Birra","Mojito"),
    DomandaClass("Qual'è il pasto per te più importante?","Colazione","Pranzo","Cena")
  ];


@override
  Widget build(BuildContext context) {
  return MaterialApp(
      home: Container(
      child: Scaffold(
      body: Container(
      child:  ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          height: 194,
          color: Colore.rosaMedio,
          child:
          Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("Qual'è il tuo drink preferito?", style: TextStyle(color: Colors.white, fontSize: 15),)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("La tua risposta", style: TextStyle(color: Colors.white, fontSize: 10, decoration: TextDecoration.underline),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Spritz", style: TextStyle(color: Colors.white, fontSize: 13,)),
                    Theme(
                        data: ThemeData(unselectedWidgetColor: Colors.white),
                        child: Checkbox(value: value, activeColor: Colors.green, tristate: false, onChanged: (bool newValue) {
                          if(value2 == false && value3 == false){
                            setState(() {
                              value = newValue;
                            });
                          }
                        })),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Birra", style: TextStyle(color: Colors.white, fontSize: 13)),
                    Theme(
                        data: ThemeData(unselectedWidgetColor: Colors.white),
                        child: Checkbox(value: value2, activeColor: Colors.green, tristate: false, onChanged: (bool newValue) {
                          if(value == false && value3 == false) {
                            setState(() {
                              value2 = newValue;
                            });
                          }
                        })),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Mojito", style: TextStyle(color: Colors.white, fontSize: 13)),
                    Theme(
                        data: ThemeData(unselectedWidgetColor: Colors.white),
                        child: Checkbox(value: value3, activeColor: Colors.green, tristate: false, onChanged: (bool newValue) {
                          if(value == false && value2 == false) {
                            setState(() {
                              value3 = newValue;
                            });
                          }
                        })),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      ),

  ),
  ),),
  );
  }
}