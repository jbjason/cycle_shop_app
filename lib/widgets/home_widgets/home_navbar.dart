import 'package:cycle_shop_app/constants/constants.dart';
import 'package:cycle_shop_app/widgets/home_widgets/home_nav_painter.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});
  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: kBottomNavigationBarHeight * 1.2,
      margin: const EdgeInsets.only(bottom: 5, right: 10, left: 10),
      child: CustomPaint(
        painter: HomeNavPainter(selectedIndex: _selectedIndex),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            MyConstant().navIcons.length,
            (i) => SizedBox(
              width: (size.width - 20) / 5 - 2,
              child: InkWell(
                onTap: () => setState(() => _selectedIndex = i),
                child: Center(
                    child: Icon(
                  MyConstant().navIcons[i],
                  color: _selectedIndex == i
                      ? Colors.white
                      : MyConstant().buttonSecondaryColor,
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
