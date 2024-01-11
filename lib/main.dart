import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';
import 'package:food/screens/splash/view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: appColor,
          primarySwatch: primaryColor,
        ),
        home: SplachScreen());
  }
}
