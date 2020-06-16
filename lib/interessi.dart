import 'dart:async';
import 'package:flutter/material.dart';
import 'package:justmeet/colors.dart';
import 'package:justmeet/geolocalizzazione.dart';
import 'package:justmeet/register/research.dart';



class Interesse extends StatefulWidget {
  @override
  _InteresseState createState() => _InteresseState();
}


class _InteresseState extends State<Interesse> {


  bool _isVisible = false;
  bool _isVisible2 = false;
  bool _isVisible3 = false;
  bool _isVisible4 = false;
  bool _isVisible5 = false;
  bool _isVisible6 = false;
  bool _isVisible7 = false;
  bool _isVisible8 = false;
  bool _isVisible9 = false;

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

  void showToast3() {
    setState(() {
      _isVisible3 = !_isVisible3;
    });
  }
  void showToast4() {
    setState(() {
      _isVisible4 = !_isVisible4;
    });
  }
  void showToast5() {
    setState(() {
      _isVisible5 = !_isVisible5;
    });
  }
  void showToast6() {
    setState(() {
      _isVisible6 = !_isVisible6;
    });
  }
  void showToast7() {
    setState(() {
      _isVisible7 = !_isVisible7;
    });
  }

  void showToast8() {
    setState(() {
      _isVisible8 = !_isVisible8;
    });
  }

  void showToast9() {
    setState(() {
      _isVisible9 = !_isVisible9;
    });
  }

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          body: Container(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 40),
               child:
               Column(
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
                     Text("Interessi", style: TextStyle(fontSize: 16),),
                   ],
                 ),
                Expanded(flex: 3,
                child:
                 GridView.count(
                   primary: false,
                   crossAxisSpacing: 10,
                   mainAxisSpacing: 20,
                   crossAxisCount: 3,
                   children: <Widget>[
                 Card(
                     semanticContainer: true,
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                       color: Colors.white,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                       ),
                       child: Builder(
                           builder: (context) =>
                               GestureDetector(
                                   onTap: () {
                                     showToast();
                                   }, // handle your image tap here
                                   child: new Stack(
                                     children: <Widget>[
                                       new Positioned(
                                         child:
                                   Container(
                                   decoration: BoxDecoration(
                                   image: DecorationImage(
                                   image: AssetImage('assets/images/arte.jpg'),
                                 fit: BoxFit.fitHeight,
                                    ),
                                 ),
                                  child: Center(child:Text("Arte", style: TextStyle(color: Colors.white, fontSize: 20),),),
                                   ),

                                       ),

                                       Visibility (
                                         visible: _isVisible,
                                         child:  new Positioned(
                                           left: 60,
                                           top: 50,
                                           child: Image.asset(
                                             'assets/images/true.png',
                                             width: 30,
                                             height: 50,// this is the solution for border
                                           ),
                                         ),
                                         replacement: new Positioned(
                                           left: 60,
                                           top: 50,
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
                     Card(
                       semanticContainer: true,
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       color: Colors.pinkAccent,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                       ),
                       child:
                       Builder(
                           builder: (context) =>
                               GestureDetector(
                                   onTap: () {
                                       showToast2();
                                   }, // handle your image tap here
                                   child: new Stack(
                                     children: <Widget>[
                                       new Positioned(
                                         child:
                                         Container(
                                           decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage('assets/images/fotografia.jpg'),
                                               fit: BoxFit.fitHeight,
                                             ),
                                           ),
                                           child: Center(child:Text("Fotografia", style: TextStyle(color: Colors.white, fontSize: 20),),),
                                         ),
                                       ),
                                       Visibility (
                                         visible: _isVisible2,
                                         child:  new Positioned(
                                           left: 60,
                                           top: 50,
                                           child: Image.asset(
                                             'assets/images/true.png',
                                             width: 30,
                                             height: 50,// this is the solution for border
                                           ),
                                         ),
                                         replacement: new Positioned(
                                           left: 60,
                                           top: 50,
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
                     Card(
                       semanticContainer: true,
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       color: Colors.pinkAccent,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                       ),
                       child:
                       Builder(
                           builder: (context) =>
                               GestureDetector(
                                   onTap: () {
                                       showToast3();
                                   }, // handle your image tap here
                                   child: new Stack(
                                     children: <Widget>[
                                       new Positioned(
                                         child:
                                         Container(
                                           decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage('assets/images/party.jpg'),
                                               fit: BoxFit.fitHeight,
                                             ),
                                           ),
                                           child: Center(child:Text("Party", style: TextStyle(color: Colors.white, fontSize: 20),),),
                                         ),
                                       ),
                                       Visibility (
                                         visible: _isVisible3,
                                         child:  new Positioned(
                                           left: 60,
                                           top: 50,
                                           child: Image.asset(
                                             'assets/images/true.png',
                                             width: 30,
                                             height: 50,// this is the solution for border
                                           ),
                                         ),
                                         replacement: new Positioned(
                                           left: 60,
                                           top: 50,
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
                     Card(
                       semanticContainer: true,
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       color: Colors.pinkAccent,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                       ),
                       child:
                       Builder(
                           builder: (context) =>
                               GestureDetector(
                                   onTap: () {
                                       showToast4();
                                   }, // handle your image tap here
                                   child: new Stack(
                                     children: <Widget>[
                                       new Positioned(
                                         child:
                                         Container(
                                           decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage('assets/images/cibo.jpg'),
                                               fit: BoxFit.fitHeight,
                                             ),
                                           ),
                                           child: Center(child:Text("Cibo", style: TextStyle(color: Colors.white, fontSize: 20),),),
                                         ),
                                       ),
                                       Visibility (
                                         visible: _isVisible4,
                                         child:  new Positioned(
                                           left: 60,
                                           top: 50,
                                           child: Image.asset(
                                             'assets/images/true.png',
                                             width: 30,
                                             height: 50,// this is the solution for border
                                           ),
                                         ),
                                         replacement: new Positioned(
                                           left: 60,
                                           top: 50,
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
                     Card(
                       semanticContainer: true,
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       color: Colors.pinkAccent,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                       ),
                       child:
                       Builder(
                           builder: (context) =>
                               GestureDetector(
                                   onTap: () {
                                       showToast5();
                                   }, // handle your image tap here
                                   child: new Stack(
                                     children: <Widget>[
                                       new Positioned(
                                         child:
                                         Container(
                                           decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage('assets/images/natura.jpg'),
                                               fit: BoxFit.fitHeight,
                                             ),
                                           ),
                                           child: Center(child:Text("Natura", style: TextStyle(color: Colors.white, fontSize: 20),),),
                                         ),
                                       ),
                                       Visibility (
                                         visible: _isVisible5,
                                         child:  new Positioned(
                                           left: 60,
                                           top: 50,
                                           child: Image.asset(
                                             'assets/images/true.png',
                                             width: 30,
                                             height: 50,// this is the solution for border
                                           ),
                                         ),
                                         replacement: new Positioned(
                                           left: 60,
                                           top: 50,
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
                     Card(
                       semanticContainer: true,
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       color: Colors.pinkAccent,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                       ),
                       child:
                       Builder(
                           builder: (context) =>
                               GestureDetector(
                                   onTap: () {
                                       showToast6();
                                   }, // handle your image tap here
                                   child: new Stack(
                                     children: <Widget>[
                                       new Positioned(
                                         child:
                                         Container(
                                           decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage('assets/images/drink.jpg'),
                                               fit: BoxFit.fitHeight,
                                             ),
                                           ),
                                           child: Center(child:Text("Drink", style: TextStyle(color: Colors.white, fontSize: 20),),),
                                         ),
                                       ),
                                       Visibility (
                                         visible: _isVisible6,
                                         child:  new Positioned(
                                           left: 60,
                                           top: 50,
                                           child: Image.asset(
                                             'assets/images/true.png',
                                             width: 30,
                                             height: 50,// this is the solution for border
                                           ),
                                         ),
                                         replacement: new Positioned(
                                           left: 60,
                                           top: 50,
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
                     Card(
                       semanticContainer: true,
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       color: Colors.pinkAccent,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                       ),
                       child:
                       Builder(
                           builder: (context) =>
                               GestureDetector(
                                   onTap: () {
                                       showToast7();
                                   }, // handle your image tap here
                                   child: new Stack(
                                     children: <Widget>[
                                       new Positioned(
                                         child:
                                         Container(
                                           decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage('assets/images/musica.jpg'),
                                               fit: BoxFit.fitHeight,
                                             ),
                                           ),
                                           child: Center(child:Text("Musica", style: TextStyle(color: Colors.white, fontSize: 20),),),
                                         ),
                                       ),
                                       Visibility (
                                         visible: _isVisible7,
                                         child:  new Positioned(
                                           left: 60,
                                           top: 50,
                                           child: Image.asset(
                                             'assets/images/true.png',
                                             width: 30,
                                             height: 50,// this is the solution for border
                                           ),
                                         ),
                                         replacement: new Positioned(
                                           left: 60,
                                           top: 50,
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
                     Card(
                       semanticContainer: true,
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       color: Colors.pinkAccent,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                       ),
                       child:
                       Builder(
                           builder: (context) =>
                               GestureDetector(
                                   onTap: () {
                                       showToast8();
                                   }, // handle your image tap here
                                   child: new Stack(
                                     children: <Widget>[
                                       new Positioned(
                                         child:
                                         Container(
                                           decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage('assets/images/moda.jpg'),
                                               fit: BoxFit.fitHeight,
                                             ),
                                           ),
                                           child: Center(child:Text("Moda", style: TextStyle(color: Colors.white, fontSize: 20),),),
                                         ),
                                       ),
                                       Visibility (
                                         visible: _isVisible8,
                                         child:  new Positioned(
                                           left: 60,
                                           top: 50,
                                           child: Image.asset(
                                             'assets/images/true.png',
                                             width: 30,
                                             height: 50,// this is the solution for border
                                           ),
                                         ),
                                         replacement: new Positioned(
                                           left: 60,
                                           top: 50,
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
                     Card(
                       semanticContainer: true,
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       color: Colors.pinkAccent,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                       ),
                       child:
                       Builder(
                           builder: (context) =>
                               GestureDetector(
                                   onTap: () {
                                       showToast9();
                                   }, // handle your image tap here
                                   child: new Stack(
                                     children: <Widget>[
                                       new Positioned(
                                         child:
                                         Container(
                                           decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage('assets/images/sport.jpg'),
                                               fit: BoxFit.fitHeight,
                                             ),
                                           ),
                                           child: Center(child:Text("Sport", style: TextStyle(color: Colors.white, fontSize: 20),),),
                                         ),
                                       ),
                                       Visibility (
                                         visible: _isVisible9,
                                         child:  new Positioned(
                                           left: 60,
                                           top: 50,
                                           child: Image.asset(
                                             'assets/images/true.png',
                                             width: 30,
                                             height: 50,// this is the solution for border
                                           ),
                                         ),
                                         replacement: new Positioned(
                                           left: 60,
                                           top: 50,
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
                   ],
                 ),),
                Expanded(flex: 1,child:
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
                         onPressed: () {  Navigator.push(context,
                             MaterialPageRoute(
                                 builder: (context) => Geolocalizzazione()));
                         },
                         child: Text(
                           "Inizia!",
                           style: TextStyle(fontSize: 13.0),
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
    );
  }
}