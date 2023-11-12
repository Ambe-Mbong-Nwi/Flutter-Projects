import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint0 = Paint()
      ..color = const Color(0xffb80f0a)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(size.width*0.6316250, size.height*0.4896429);
    path0.cubicTo(size.width*0.5832417, size.height*0.4218716, size.width*0.5265333, size.height*0.2163286, size.width*0.5888333, size.height*0.1829143);
    path0.quadraticBezierTo(size.width*0.9222333, size.height*-0.1135714, size.width,0);
    path0.quadraticBezierTo(size.width*1.0058667, size.height*0.17003857, size.width, size.height*0.3024714);
    path0.cubicTo(size.width*0.9401333, size.height*0.2714429, size.width*0.9425800, size.height*0.3096429, size.width*0.6316258, size.height*0.4096429);
    path0.close();

    canvas.drawPath(path0, paint0);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    //throw UnimplementedError();
  }
}
  // @override
  // bool shouldRepaint(covariant CustomPaint oldDelegate) {
  //   return true;
  // }