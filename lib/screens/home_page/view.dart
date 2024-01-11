import 'package:flutter/material.dart';


import '../constans.dart';
import 'controller.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final controller = PagesConroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: controller.pages[controller.selected],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selected,
          onTap: (int value) {
            controller.selected = value;
            setState(() {});
          },
          fixedColor: appColor,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.takeout_dining_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined), label: ''),
          ],
        ));
  }
}
