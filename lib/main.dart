import 'dart:async';
import 'package:flutter/material.dart';
import 'package:justmeet/carouselfirst.dart';
import 'package:justmeet/homepage.dart';
import 'package:justmeet/services/auth.dart';
import 'package:justmeet/utils.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'colors.dart';
import 'package:justmeet/register/registrazione.dart';
import 'package:justmeet/login/login.dart';

void main() => runApp(MaterialApp(home:SplashScreen()));


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Auth auth = new Auth();

  @override
  void initState() {
    if(auth.getCurrentUser() != null){
      print('loggato');
    /*  Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => HomePage())); */
    }else{
      print("non loggato");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 50,
        maxHeight: 800,
        panel: Center(
          child:
          Container(
            color: Colore.rosaScuro,
            child:

            Padding(padding: EdgeInsets.only(top: 30),
              child:Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:
                    Container(
                      //  height:285,
                      child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image(image: AssetImage('assets/images/fork.png'), width: 150, height: 100,),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 10),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Justmeet", style: TextStyle(fontSize: 28, color: Colors.white, )),
                              ],
                            ),)
                        ],
                      ),
                    ),),

                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      //   height: 285,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ClipOval(
                                child:
                                Container(
                                  height: 100,
                                  width: 100,
                                  color: Colors.white,
                                  child:  Builder(
                                    builder: (context) => IconButton(icon: Icon(Icons.vpn_key),
                                      color: Colors.red,
                                      iconSize: 50.0,
                                      onPressed:(){
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) => Login()));
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 80,
                                color: Colors.white,
                              ),

                              ClipOval(
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  color: Colors.white,
                                  child:   Builder(
                                    builder: (context) => IconButton(icon: Icon(Icons.supervised_user_circle),
                                      color: Colors.red,
                                      iconSize: 50.0,
                                      onPressed:(){
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) => CarouselFirst(current: 0,)));
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding( padding:EdgeInsets.only(top: 10),child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Log in", style: TextStyle(color: Colors.white),),
                              Text("Registrati", style: TextStyle(color: Colors.white),),
                            ],
                          ),)

                        ],
                      ),
                    ),
                  ),
                ],
              ),),
          ),

        ),


        collapsed: Container(
          color: Colore.rosaScuro,
          child: Center(
            child: Text(
              "Scorri verso l'alto",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
        body: Center(
          child:  Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/coppie.png'),
                  fit: BoxFit.cover
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('assets/images/fork.png'),
                      width: 200,
                      height: 150,),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Justmeet", style: TextStyle(
                        fontSize: 28, color: Colors.white,)),
                    ],
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

