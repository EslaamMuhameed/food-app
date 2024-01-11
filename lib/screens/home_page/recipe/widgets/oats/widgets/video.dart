import 'package:flutter/material.dart';

import '../../../../../constans.dart';
import '../../../controller.dart';

class Video extends StatelessWidget {
  final RecipeController? controller;
  final int? index;

  const Video({Key? key, this.controller, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    controller!.productRecipes[index!].img!,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 30,
                    ),
                    height: 70,
                    width: 80,
                    decoration:
                        BoxDecoration(color: appColor, shape: BoxShape.circle),
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.grey.shade600),
                    children: [
                  TextSpan(style: bold, text: '\n\n\nOars porridge'),
                  TextSpan(
                      text:
                          '\n\nOats porridge is a qiuck and healthy porridge'),
                  TextSpan(
                      text: '\n\nmade with oats, water or milk. Both quik'),
                  TextSpan(
                      text:
                          '\n\ncooking oats or roller oats can be used, oats'),
                  TextSpan(
                      text: '\n\nis perfect for Breackfast, Easy to cook, so'),
                  TextSpan(
                      text: '\n\neveryone choose oats for their breakfast.'),
                ])),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 100),
                height: 50,
                width: 350,
                child: MaterialButton(
                  color: appColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Text(
                    'View more Recipe',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
