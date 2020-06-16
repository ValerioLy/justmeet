import 'package:flutter/material.dart';
import 'colors.dart';


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class CustClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = new Path();
    path.lineTo(0, 600);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper)
  {
    return null;
  }

}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colore.rosaScuro;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.8);

    path.quadraticBezierTo(
        size.width * 0.25, size.height * 1.050, size.width * 0.6, size.height * 0.88);

    path.quadraticBezierTo(size.width * 0.9 , size.height * 0.76,  size.width * 1,  size.height * 0.95);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


class CurveMidPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.3);

    path.quadraticBezierTo(
        size.width * 0.25, size.height * 0.55, size.width * 0.6, size.height * 0.43);

    path.quadraticBezierTo(size.width * 0.9 , size.height * 0.32,  size.width * 1,  size.height * 0.5);


    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CurveMid2Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colore.rosaScuro;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.19);

    path.quadraticBezierTo(
        size.width * 0, size.height * 0.44, size.width * 0.6, size.height * 0.350);

    path.quadraticBezierTo(size.width * 0.9 , size.height * 0.32,  size.width * 1,  size.height * 0.45);


    /*
    path.quadraticBezierTo(
        size.width * 0.25, size.height * 1, size.width * 0.7, size.height * 0.84);

    path.quadraticBezierTo(size.width * 0.9 , size.height * 0.8 , size.width,  size.height * 0.9167);
     */

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


class CurveTopPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colore.rosaScuro;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.15);

    path.quadraticBezierTo(
        size.width * 0.25, size.height * 0.35, size.width * 0.6, size.height * 0.26);

    path.quadraticBezierTo(size.width * 0.9 , size.height * 0.2,  size.width * 1,  size.height * 0.3);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

  showAlertDialog(BuildContext context, String title, String message) {

    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }





