import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/widgets/components.dart';

import '../../../constans.dart';

import '../controller.dart';
import 'PopularDealsView/view.dart';

class PopularDealsItems extends StatelessWidget {
  final controller = DashboardController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      child: Row(
          children: List.generate(
        controller.products2.length,
        (index) => Expanded(
            child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 2,
              color: Colors.white,
              margin: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(controller.products2[index].img!)),
                  shape: BoxShape.circle),
              height: 120,
            ),
            Padding(
                padding: EdgeInsets.only(top: 130),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(style: TextStyle(), children: [
                    TextSpan(
                        text: '${controller.products2[index].title}\n',
                        style: bold),
                    TextSpan(
                        text: '${controller.products2[index].subtitle!}\n',
                        style: TextStyle(color: Colors.black)),
                  ]),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${controller.products2[index].price!}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: appColor,
                        borderRadius: BorderRadius.circular(10)),
                    width: 40,
                    height: 40,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (i) => PopularDealsViewScreen(
                                  index: index,
                                  controller: controller,
                                )));
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        )),
      )),
    );
  }
}
