import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:justmeet/register/genere.dart';
import 'package:justmeet/register/infoaccount.dart';
import 'package:justmeet/register/registrazione.dart';


class CarouselFirst extends StatefulWidget {

  CarouselFirst({Key key, this.title, this.current, this.uidUser}) : super(key: key);

  final String title;
  int current;
  String uidUser;

  @override
  CarouselFirstState createState() => CarouselFirstState();
}

class CarouselFirstState extends State<CarouselFirst> {

  CarouselSlider carouselSlider;
  List classes = [
    Registrazione(), Infoaccount(), Genere()
  ];


  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 700.0,
              initialPage: 0,
              viewportFraction: 0.9999,
              enlargeCenterPage: true,
              reverse: false,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                    widget.current = index;
                });
              },
              items: classes.map((classUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    switch (widget.current) {
                      case 0:
                        return Registrazione();
                        break;
                      case 1:
                      return Genere();
                      break;
                      case 2:
                        return Infoaccount();
                        break;
                    }
                  },
                );
              }).toList(),
            ),
            Positioned(
              bottom: 10,
              left: 120,
              right: 120,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(classes, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.current == index ? Colors.black : Colors.grey,
                    ),
                  );
                }),
              ),),
          ],
        ),
      ),
    );
  }

}
