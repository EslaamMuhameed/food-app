import 'package:flutter/material.dart';
import 'package:food/screens/home_page/recipe/widgets/recipe_items.dart';


import '../../../constans.dart';
import '../controller.dart';

class Recipes extends StatelessWidget {
  final controller = RecipeController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Popular Recipes',
            style: bold,
          ),
          trailing: Text(
            'See All',
            style: TextStyle(color: appColor, fontWeight: FontWeight.bold),
          ),
        ),
        recipItems(
          index: 0,
          controller: controller,
          img: 'assets/images/SavouryOats.jpg',
        ),
        ListTile(
          title: Row(
            children: [
              Text(
                'Oats porridge',
                style: bold,
              ),
              Container(
                decoration: BoxDecoration(
                    color: appColor, borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                height: 25,
                width: 60,
                child: Center(
                  child: Text(
                    'New',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          subtitle: Text('Breakfast . American . Vegetarian'),
        ),
        SizedBox(
          height: 20,
        ),
        recipItems(
          index: 1,
          controller: controller,
          img: 'assets/images/porridge.jpg',
        ),
      ],
    );
  }
}
