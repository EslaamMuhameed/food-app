import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';

import '../../../controller.dart';

class Ingredients extends StatefulWidget {
  final controller = RecipeController();

  @override
  _IngredientsState createState() => _IngredientsState();
}

bool isChecked = false;
bool isChecked2 = false;
bool isChecked3 = false;

class _IngredientsState extends State<Ingredients> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                'assets/images/Cooking-Soon (1).jpg',
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              child: Row(
                children: [
                  Text(
                    ' Seriving',
                    style: bold,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: () {
                              widget.controller.minus();
                              setState(() {});
                            },
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                        Text(
                          widget.controller.count.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                            onTap: () {
                              widget.controller.plus();
                              setState(() {});
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: appColor,
                        borderRadius: BorderRadius.circular(20)),
                    height: 35,
                    width: 100,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked2 = value!;
                      });
                    }),
                Text(
                  '1 Packet rolled oats',
                  style: boldjr,
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked3,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked3 = value!;
                      });
                    }),
                Text(
                  'Half kg Lequid milk',
                  style: boldjr,
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                Text(
                  '100 gm sugar (optional)',
                  style: boldjr,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              height: 50,
              width: 350,
              child: MaterialButton(
                color: appColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                child: Text(
                  'Shop Ingredients',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
