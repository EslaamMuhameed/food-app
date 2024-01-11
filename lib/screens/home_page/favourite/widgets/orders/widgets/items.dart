import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constans.dart';
import '../controller.dart';

class Items extends StatelessWidget {
  final OrderController? controller;
  final int? index;

  const Items({Key? key, this.controller, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.only(top: 25),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        width: double.infinity,
        height: 120,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: appColor,
              ),
              width: 50,
              height: 50,
              child: Icon(
                Icons.add_shopping_cart_sharp,
                color: Colors.white,
              ),
            ),
            Spacer(),
            RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(text: controller!.products[index!].title!),
                      TextSpan(
                          text: '\n${controller!.products[index!].subtitle!}',
                          style: TextStyle(
                              color: controller!.products[index!].color!,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: '\nJuly 3, 2021',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ])),
            Spacer(
              flex: 3,
            ),
            Column(
              children: [
                Spacer(
                  flex: 2,
                ),
                Text(
                  '\$40.50',
                  style: TextStyle(
                      color: appColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Spacer(),
                controller!.products[index!].check!,
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
