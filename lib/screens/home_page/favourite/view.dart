import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:food/screens/home_page/favourite/widgets/list_items.dart';
import '../../constans.dart';
import 'controller.dart';

class FavouriteScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Favourite', style: bold),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListItems(
        ),
      ),
    );

  }
}
