import 'package:cycle_shop_app/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeNavPainter extends CustomPainter {
  final int selectedIndex;
  const HomeNavPainter({required this.selectedIndex});

  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;

    /// navBar background painter
    final paint = Paint()..color = MyConstant().scaffoldColor;
    final path = Path();
    path.moveTo(-10, h * .3);
    path.lineTo(w + 10, 0);
    path.lineTo(w + 10, h + 5);
    path.lineTo(-10, h + 5);
    path.close();
    canvas.drawPath(path, paint);

    /// nav item painter
    final itemWidth = w / 5;
    final startPoint = itemWidth * selectedIndex;
    final startPointMid = startPoint + (itemWidth / 2);
    final path2 = Path();
    final center = Offset(itemWidth / 2, h / 2);
    final rect = Rect.fromCenter(center: center, width: w, height: h);
    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        MyConstant().backThirdColor,
        MyConstant().buttonPrimaryColor,
      ],
    );
    final paint2 = Paint()..shader = gradient.createShader(rect);
    path2.moveTo(startPointMid, h * .1);
    // top right
    path2.lineTo(startPoint + itemWidth - 20, h * .02);
    path2.quadraticBezierTo(
        startPoint + itemWidth, 0, startPoint + itemWidth, h * .2);
    //bottom right
    path2.lineTo(startPoint + itemWidth, h * .8 - 20);
    path2.quadraticBezierTo(
        startPoint + itemWidth, h * .8, startPoint + itemWidth - 10, h * .8);

    //bottom left
    path2.lineTo(startPoint + 20, h - 5);
    path2.quadraticBezierTo(startPoint, h, startPoint, h - 20);
    //top left
    path2.lineTo(startPoint, h * .2 + 20);
    path2.quadraticBezierTo(startPoint, h * .2, startPoint + 20, h * .18);
    path2.close();

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
