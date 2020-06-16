import 'package:flutter/material.dart';
import 'package:justmeet/carouselfirst.dart';
import 'dart:async';
import 'package:justmeet/colors.dart';
import 'package:justmeet/layout.dart';
import 'package:justmeet/login/password.dart';
import 'package:justmeet/register/registrazione.dart';
import 'package:justmeet/utils.dart';
import 'package:justmeet/services/auth.dart';
import '../homepage.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;


  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<Login>{

  bool value = false;
  Auth auth = new Auth();

  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

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
        Padding(padding: EdgeInsets.only(top: 30, bottom: 10),child:
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
      Padding(padding:EdgeInsets.only(top: 30),
        child:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipOval(
            child:
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
              child:  Builder(
                builder: (context) =>
                    GestureDetector(
                      onTap: () {
                        print('login via facebook');
                      }, // handle your image tap here
                      child: Image.asset(
                        'assets/images/fb.png',
                        fit: BoxFit.scaleDown, // this is the solution for border
                      ),
                    )

              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child:Text("oppure", style: TextStyle(color: Colors.white),),
          ),
          ClipOval(
            child: Container(
              height: 50,
              width: 50,
              color: Colors.white,
              child:   Builder(
                builder: (context) =>
                    GestureDetector(
                      onTap: ()  {
                      }, // handle your image tap here
                      child: Image.asset(
                        'assets/images/google.png',
                        fit: BoxFit.scaleDown, // this is the solution for border
                      ),
                    )
              ),
            ),
          ),
        ],
      ),
        ),
    Container(
    padding: EdgeInsets.only(top: 30),
    margin: EdgeInsets.only(left: 50, right: 50), child:
    Column(
    children: <Widget>[

    Row(
        children: <Widget>[
          Expanded(child:TextField(controller:username,  decoration: InputDecoration(hintText: "Username",  enabledBorder: UnderlineInputBorder(
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
      Align(
        alignment: Alignment.centerRight,
        child:FlatButton(
          color: Colore.rosaScuro,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(8.0),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Password()));
          },
          child: Text(
            "Password Dimenticata?",
            style: TextStyle(fontSize: 10),
          ),
        ),
      ),


      Padding(padding: EdgeInsets.only(top: 0), child:
      Row(
        children: <Widget>[
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(value: value, activeColor: Colors.green, tristate: false, onChanged: (bool newValue) {
                setState(() {
                  value = newValue;
                });
              })),
          Text("Ricorda account", style: TextStyle(color:Colors.white)),
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
              onPressed: () {
                try {
                  auth.signIn(username.text, password.text);
                  print("login effettuato");
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()));
                }
                catch(error){
                  print("login fallito");
                }

              },
              child: Text(
                "Avanti",
                style: TextStyle(fontSize: 15.0),
              ),
            ),)

        ],
      ),),
    ],
        ),
        ),


      Align(
        alignment: Alignment.bottomCenter,
        child:FlatButton(
          textColor: Colors.grey,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.only(top: 30),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => CarouselFirst(current: 0,)));
          },
          child: Text(
            "Non sei ancora registrato?",
            style: TextStyle(fontSize: 10),
          ),
        ),
      ),
          ],
        ),),
        ),
          ),
          ),
),

    );

  }

}