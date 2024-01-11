import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';
import 'components/categories.dart';

import 'components/recipes.dart';
import 'components/serach.dart';

class RecipeScreen extends StatelessWidget {
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
              ' Choose your one\n${" from 1000+ Recipes!"}',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Search(),
              Categories(),
              Recipes(),
            ],
          ),
        ),
      ),
    );
  }
}
