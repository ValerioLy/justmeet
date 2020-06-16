import 'package:flutter/material.dart';

import 'colors.dart';

main()=>runApp(MaterialApp(home: FrameLayoutState(child: Image.asset(
  'assets/images/coppie.png',
  width: double.infinity,
  height: double.infinity,
  fit: BoxFit.cover,
),)));

class FrameLayoutState extends StatelessWidget{

  double _heightPercentageMin;
  double _heightPercentageMax;
  double _offsetHeight;
  Widget _child;

  FrameLayoutState({@required Widget child, double heightPercentageMin= 0.7, double heightPercentageMax= 1, double offsetHeight=35.0}){
    this._heightPercentageMax=heightPercentageMax;
    this._heightPercentageMin=heightPercentageMin;
    this._offsetHeight=offsetHeight;
    this._child=child;
  }
  
  @override
  Widget build(BuildContext context) {


    return Container(
      color: Colors.white,

        child: ClipPath(
        child: _child,
        clipper: _MyClipper(heightPercentageMin: _heightPercentageMin, offset:_offsetHeight, heightPercentageMax: _heightPercentageMax),
      ),

    );

  }

}

class _MyClipper extends CustomClipper<Path>{

  double _heightPercentageMin;
  double _heightPercentageMax;
  double _heightPercentageMedio;
  double _offsetHeight;
  _MyClipper({double heightPercentageMin, double offset, double heightPercentageMax}){
    this._heightPercentageMin=heightPercentageMin;
    this._offsetHeight=offset;
    this._heightPercentageMax=heightPercentageMax;
  }

  @override
  Path getClip(Size size) {
    this._heightPercentageMedio=(_heightPercentageMin+((_heightPercentageMax-_heightPercentageMin)/2));
    Path path = Path();
    path.lineTo(0.0, size.height*_heightPercentageMin+_offsetHeight);
    path.quadraticBezierTo(size.width / 12*0.5, size.height * _heightPercentageMedio, size.width/4, size.height * _heightPercentageMedio);
    /*path.quadraticBezierTo(25, _height-50, 50, _height);
    path.lineTo(size.width-50, _height);
    path.quadraticBezierTo(size.width-25, size.height*0.9, size.width, size.height);*/
    //path.lineTo(size.width, _height - 40);
    path.lineTo(size.width/4*3, size.height* _heightPercentageMedio);
    path.quadraticBezierTo(size.width/12*11.5, size.height*_heightPercentageMedio, size.width, size.height*_heightPercentageMax-_offsetHeight);
    path.lineTo(size.width, 0.0);
    //path.close();

    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}