import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';
import 'package:food/screens/home_page/dashboard/widgets/categories_items.dart';
import '../controller.dart';

class Categories extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Categories',
            style: bold,
          ),
          trailing: Text(
            'See All',
            style: TextStyle(color: appColor, fontWeight: FontWeight.bold),
          ),
        ),
        CategoriesItems(),
      ],
    );
  }
}
