import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';
import 'components/categories.dart';
import 'components/fresh.dart';
import 'components/popular_deals.dart';
import 'components/serach.dart';
import 'controller.dart';

class DashboardScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            Text(
              'Hand picked fresh\n ${"items only for you!"}',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        elevation: 0,
        actions: [
          Icon(
            Icons.notifications_none,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Search(),
              Categories(),
              Fresh(),
              PopularDeals(),
            ],
          ),
        ),
      ),
    );
  }
}
