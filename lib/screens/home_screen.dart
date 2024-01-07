import 'package:cycle_shop_app/widgets/home_widgets/home_body_painter.dart';
import 'package:cycle_shop_app/widgets/home_widgets/home_navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: CustomPaint(
          painter: HomeBodyPainter(),
          child: const Column(children: []),
        ),
      ),
      bottomNavigationBar: const HomeNavBar(),
    );
  }
}
