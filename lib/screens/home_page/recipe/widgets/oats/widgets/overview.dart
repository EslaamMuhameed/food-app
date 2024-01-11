import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';

import '../../../controller.dart';


class OverView extends StatelessWidget {
  final RecipeController? controller;
  final int? index;

  const OverView({Key? key, this.controller, this.index}) : super(key: key);

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
              child: Image.asset(
                controller!.productRecipes[index!].img!,
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            RichText(
                textAlign: TextAlign.start,
                text:
                    TextSpan(style: TextStyle(color: Colors.black), children: [
                  TextSpan(
                      text:
                          '\n\n\nOats porridge is a quik and healthy porridge \n\n${'made with oats, water or milk. Both quick'}\n\n${'cooking oats or rolled oats can be used.'}'),
                ])),
            Row(
              children: [
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(style: boldjr, children: [
                      TextSpan(text: '\n\n\nPrep Time\n\n${'1 Min'} '),
                    ])),
                SizedBox(
                  width: 40,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(style: boldjr, children: [
                      TextSpan(text: '\n\n\nCook Time\n\n${'5 Min'} '),
                    ])),
                SizedBox(
                  width: 40,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(style: boldjr, children: [
                      TextSpan(text: '\n\n\nTotal Time\n\n${'6 Min'} '),
                    ]))
              ],
            ),
            Row(
              children: [
                RichText(
                    text: TextSpan(style: boldjr, children: [
                  TextSpan(text: '\n\n\nCusine:${'\n\nAmerican,World'}'),
                ])),
                SizedBox(width: 100,),
                RichText(
                    text: TextSpan(style: boldjr, children: [
                  TextSpan(text: '\n\n\nCourse:${'\n\nBreakfast'}'),
                ])),
              ],
            ),
            Row(
              children: [
                RichText(
                    text: TextSpan(style: boldjr, children: [
                      TextSpan(text: '\n\n\nDiet:${'\n\nVegetarian'}'),
                    ])),
                SizedBox(width: 130,),
                RichText(
                    text: TextSpan(style: boldjr, children: [
                      TextSpan(text: '\n\n\nDifficulty Level:${'\n\nEasy'}'),
                    ])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
