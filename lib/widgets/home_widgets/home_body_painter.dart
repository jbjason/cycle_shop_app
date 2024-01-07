import 'package:cycle_shop_app/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeBodyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final center = Offset(w / 2, h / 2);
    final rect = Rect.fromCenter(center: center, width: w, height: h);
    final gradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomCenter,
      colors: [
        MyConstant().backThirdColor,
        MyConstant().backSecondaryColor,
        MyConstant().backPrimaryColor,
      ],
    );
    final paint = Paint()..shader = gradient.createShader(rect);
    final path = Path();

    path.moveTo(3, h * 1.2);
    path.lineTo(w * .7, h * .2);
    path.quadraticBezierTo(w * .8, h * .1, w, h * .3);
    path.lineTo(w, h * 1.2);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
