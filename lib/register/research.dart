import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:justmeet/colors.dart';
import 'package:justmeet/domande.dart';
import 'package:justmeet/register/genere.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;

import '../utils.dart';

class Research extends StatefulWidget {
  Research({Key key, this.title}) : super(key: key);

  final String title;


  @override
  ResearchState createState() => new ResearchState();
}


class ResearchState extends State<Research>{

  Color btnColor = Colore.rosaScuro;
  Color btnColor2 = Colore.rosaScuro;

  double _lowerValue = 18;
  double _upperValue = 99;

  double _lowerValue2 = 1;
  double _upperValue2 = 99;

  double _lowerValue3 = 101;
  double _upperValue3 = 199;


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
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(image: AssetImage('assets/images/fork.png'), width: 60, height: 40,),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Vorrei conoscere", style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonTheme(
                                minWidth: 100,
                                child:FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Colors.white)
                                  ),
                                  color: btnColor,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colore.rosaScuro,
                                  onPressed: () {

                                     if(btnColor2 == Colors.white30){
                                       btnColor2 = Colore.rosaScuro;
                                     }
                                      if(btnColor == Colors.white30){
                                        setState(() {
                                          btnColor = Colore.rosaScuro;
                                        });
                                      }
                                      else {
                                        setState(() {
                                          btnColor = Colors.white30;
                                        });
                                      }

                                  },
                                  child: Text(
                                    "Maschio",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),)

                            ],
                      ),
                      Row(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 100,
                            child:FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.white)
                              ),
                              color: btnColor2,
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colore.rosaScuro,
                              onPressed: () {
                                if(btnColor == Colors.white30){
                                  btnColor = Colore.rosaScuro;
                                }
                                if(btnColor2 == Colors.white30){
                                  setState(() {
                                    btnColor2 = Colore.rosaScuro;
                                  });
                                }
                                else {
                                  setState(() {
                                    btnColor2 = Colors.white30;
                                  });
                                }

                              },
                              child: Text(
                                "Femmina",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),)
                        ],
                      ),
                    ],
                  ),


                   Container(
                     padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("Età", style: TextStyle(color: Colors.white, fontSize: 15),),
                            ],
                          ),

              SliderTheme(
                       data: SliderTheme.of(context).copyWith(activeTrackColor: Colore.acqua, inactiveTrackColor: Colors.white, valueIndicatorColor: Colore.acqua, thumbColor: Colore.acqua),
                      child:
                          frs.RangeSlider(
                            min: 0.0,
                            max: 100.0,
                            lowerValue: _lowerValue,
                            upperValue: _upperValue,
                            divisions: 100,
                            showValueIndicator: true,
                            valueIndicatorMaxDecimals: 1,
                            onChanged: (double newLowerValue, double newUpperValue) {
                              setState(() {
                                _lowerValue = newLowerValue;
                                _upperValue = newUpperValue;
                              });
                            },
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(_lowerValue.toString(), style: TextStyle(color: Colors.white, fontSize: 12),),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(_upperValue.toString(), style: TextStyle(color: Colors.white, fontSize: 12),),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),


                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("Distanza", style: TextStyle(color: Colors.white, fontSize: 15),),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(activeTrackColor: Colore.acqua, inactiveTrackColor: Colors.white, valueIndicatorColor: Colore.acqua, thumbColor: Colore.acqua),
                            child:
                          frs.RangeSlider(
                            min: 0.0,
                            max: 100.0,
                            lowerValue: _lowerValue2,
                            upperValue: _upperValue2,
                            divisions: 2,
                            showValueIndicator: true,
                            valueIndicatorMaxDecimals: 1,
                            valueIndicatorFormatter: (int index, double value) {
                              String twoDecimals = value.toStringAsFixed(2);
                              return '$twoDecimals km';
                            },
                            onChanged: (double newLowerValue, double newUpperValue) {
                              setState(() {
                                _lowerValue2 = newLowerValue;
                                _upperValue2 = newUpperValue;
                              });
                            },
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(_lowerValue2.toString()+" km", style: TextStyle(color: Colors.white, fontSize: 12),),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(_upperValue2.toString()+" km", style: TextStyle(color: Colors.white, fontSize: 12),),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Altezza", style: TextStyle(color: Colors.white, fontSize: 15),),
                          ],
                        ),

              SliderTheme(
                data: SliderTheme.of(context).copyWith(activeTrackColor: Colore.acqua, inactiveTrackColor: Colors.white, valueIndicatorColor: Colore.acqua, thumbColor: Colore.acqua),
                child:
                        frs.RangeSlider(
                          min: 100,
                          max: 200,
                          lowerValue: _lowerValue3,
                          upperValue: _upperValue3,
                          divisions: 100,
                          showValueIndicator: true,
                          valueIndicatorMaxDecimals: 1,
                          valueIndicatorFormatter: (int index, double value) {
                            String twoDecimals = value.toStringAsFixed(2);
                            return '$twoDecimals cm';
                          },
                          onChanged: (double newLowerValue, double newUpperValue) {
                            setState(() {
                              _lowerValue3 = newLowerValue;
                              _upperValue3 = newUpperValue;
                            });
                          },
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(_lowerValue3.toString()+" cm", style: TextStyle(color: Colors.white, fontSize: 12),),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(_upperValue3.toString()+" cm", style: TextStyle(color: Colors.white, fontSize: 12),),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),


                  Container(
                    child:
                    Padding(padding: EdgeInsets.only(top: 100, bottom: 30), child:
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
                            splashColor: Colore.rosaScuro,
                            onPressed: () {  Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => Domanda()));
                            },
                            child: Text(
                              "Avanti",
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),)

                      ],
                    ),),),
                ],
              ),
            )
          ),),

        ),
      ),
    );

  }



}

