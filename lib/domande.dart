import 'dart:async';
import 'package:flutter/material.dart';
import 'package:justmeet/colors.dart';
import 'package:justmeet/interessi.dart';
import 'package:justmeet/register/research.dart';
import 'package:justmeet/utils.dart';


void main() => runApp(Domanda());

class Domanda extends StatefulWidget {
  @override
  _DomandeState createState() => _DomandeState();
}

class _DomandeState extends State<Domanda> {
  int count = 0;
  bool value = false;
  bool value2 = false;
  bool value3 = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Container(
        child: Scaffold(
          body: Container(
          color: Colors.white,
            child:
          CustomPaint(
        painter: CurvePainter(),
    child:
    Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 40),
              child:
              Column(
                  children: <Widget>[
                  Expanded(
                  flex: 0,
                    child: Container(
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(image: AssetImage('assets/images/fork.png'), width: 60, height: 40,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Domanda:", style: TextStyle(color: Colors.white),),
                            Text("$count/15", style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ],),
                    ),
                  ),
                    Expanded(
                      flex: 4,
                      child:
                          Container(
                            color: Colore.rosaScuro,
                            child:
                      ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                        Container(
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
                        ),
                          SizedBox(height: 30,),
                          Container(
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
                                      Text("Spritz", style: TextStyle(color: Colors.white, fontSize: 13)),
                                      Theme(
                                          data: ThemeData(unselectedWidgetColor: Colors.white),
                                          child: Checkbox(value: value, activeColor: Colors.green, tristate: false, onChanged: (bool newValue) {
                                            setState(() {
                                              value = newValue;
                                            });
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
                                            setState(() {
                                              value2 = newValue;
                                            });
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
                                            setState(() {
                                              value3 = newValue;
                                            });
                                          })),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          // Domanda 2
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Qual'è il pasto per te più importante?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Colazione", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Pranzo", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Cena", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Qual'è il pasto per te più importante?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Colazione", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Pranzo", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Cena", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 3
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Qual'è il piatto preferito?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Pasta", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Sushi", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Pizza", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Qual'è il piatto preferito?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Pasta", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Sushi", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Pizza", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 4
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Quale cioccolato ti piace di più?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Al latte", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Fondente", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Bianco", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Quale cioccolato ti piace di più?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Al latte", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Fondente", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Bianco", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 5
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Con quale personaggio storico ceneresti?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Michelangelo", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Anna Bolena", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Giovanni Pascoli", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Con quale personaggio storico ceneresti?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Michelangelo", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Anna Bolena", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Giovanni Pascoli", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 6
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Quale superpotere vorresti avere?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Invisibilità", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Volare", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Vista raggi x", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Quale superpotere vorresti avere", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Invisibilità", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Volare", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Vista raggi x", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 7
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Cosa preferisci?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Soldi", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Potere", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Fama", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Cosa preferisci?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Soldi", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Potere", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Fama", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 8
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Vinci alla lotteria, cosa fai con quei soldi?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Compro una casa", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("In vacanza per un mese", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Faccio beneficienza", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Vinci alla lotteria, cosa fai con quei soldi?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Compro una casa", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("In vacanza per un mese", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Faccio beneficienza", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 9
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Il viaggio è...", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Relax", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Avventura", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Divertimento", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Il viaggio è...", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Relax", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Avventura", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Divertimento", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 10
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("In che parte del mondo vorresti vivere?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Bali", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Los Angeles", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Londra", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("In che parte del mondo vorresti vivere?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Bali", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Los Angeles", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Londra", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 11
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Che genere musicale ti piace?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Classica", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Rock", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Pop", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Che genere musicale ti piace?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Classica", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Rock", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Pop", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 12
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Quale strumento vorresti imparare?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Batteria", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Chitarra", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Sax", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Quale strumento vorresti imparare?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Batteria", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Chitarra", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Sax", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 13
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Qual'è il tuo genere cinematografico?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Romantico", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Horror", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Comico", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Qual'è il tuo genere cinematografico?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Romantico", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Horror", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Comico", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 14
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("In che film avresti voluto recitare?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Titanic", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("V per vendetta", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Saw", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("In che film avresti voluto recitare?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Titanic", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("V per vendetta", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Saw", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          // Domanda 15
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Quali requisiti deve avere la tua metà?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Bellezza", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Fiducia", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Simpatia", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 194,
                            color: Colore.rosaMedio,
                            child:
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Quali requisiti deve avere la tua metà?", style: TextStyle(color: Colors.white, fontSize: 15),)
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
                                      Text("Bellezza", style: TextStyle(color: Colors.white, fontSize: 13,)),
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
                                      Text("Fiducia", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                                      Text("Simpatia", style: TextStyle(color: Colors.white, fontSize: 13)),
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
                          ),
                        ],
                    ),),),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    onPressed: () {  Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) => Interesse()));
                                    },
                                    child: Text(
                                      "Salta",
                                      style: TextStyle(fontSize: 13.0),
                                    ),
                                  ),),
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
                                    onPressed: () {  Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) => Interesse()));
                                    },
                                    child: Text(
                                      "Avanti",
                                      style: TextStyle(fontSize: 13.0),
                                    ),
                                  ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
            ]
           ),
          ),
        ),
      ),),),
    );
  }
}