import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';

import '../controller.dart';

class CategoriesItems extends StatelessWidget {
  final controller = DashboardController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(controller.products[index].img!),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
          width: 75,
          margin: EdgeInsets.only(
            right: 8,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  controller.products[index].title!,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                width: double.infinity,
                color: appColor,
              )
            ],
          ),
        ),
        itemCount: controller.products.length,
      ),
    );
  }
}
