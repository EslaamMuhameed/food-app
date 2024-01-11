import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';
import 'package:food/screens/home_page/recipe/widgets/oats/widgets/Ingredients.dart';
import 'package:food/screens/home_page/recipe/widgets/oats/widgets/overview.dart';
import 'package:food/screens/home_page/recipe/widgets/oats/widgets/video.dart';

import '../../controller.dart';


class OatsScreen extends StatefulWidget {
  final RecipeController? controller;
  final int? index;
  OatsScreen({Key? key, this.controller, this.index});
  @override
  _OatsScreenState createState() => _OatsScreenState();
}

class _OatsScreenState extends State<OatsScreen> {
  bool click = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 18,
            ),
          )),
      body: Container(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Oats porridge recipe',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          click = !click;
                          setState(() {});
                        },
                        icon: click
                            ? Icon(
                                Icons.favorite_border,
                              )
                            : Icon(
                                Icons.favorite,
                                color: appColor,
                              )),
                  ],
                ),
              ),
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: appColor,
                labelPadding: EdgeInsets.symmetric(),
                tabs: [
                  Tab(text: 'Overview'),
                  Tab(text: 'Ingredients'),
                  Tab(text: 'video'),
                  Tab(text: 'Recipe'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    OverView(controller:widget.controller ,index: widget.index,),
                    Ingredients(),
                    Video(controller:widget.controller ,index: widget.index,),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
