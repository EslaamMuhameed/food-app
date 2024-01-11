import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/screens/constans.dart';
import 'package:food/screens/home_page/dashboard/states.dart';
import 'package:food/screens/home_page/dashboard/widgets/checkout/view.dart';
import 'package:food/screens/widgets/components.dart';

import '../../../controller.dart';

class Details extends StatelessWidget {
  final int? index;

  Details({this.index});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardController(),
      child: BlocConsumer<DashboardController, Dashboardstates>(
        listener: (context, state) {},
        builder: (context, state) {
          DashboardController controller = DashboardController.get(context);
          return Container(
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        4,
                        (index) => Container(
                              margin: EdgeInsets.only(left: 5),
                              height: 8,
                              width: index == controller.current ? 40 : 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: index == controller.current
                                    ? appColor
                                    : Colors.grey,
                              ),
                            )),
                  ),
                  ListTile(
                    title: Text(
                      controller.products2[index!].title!,
                      style: bold,
                    ),
                    subtitle: Text(
                      controller.products2[index!].subtitle!,
                      style: blacktext,
                    ),
                    trailing: InkWell(
                        onTap: () {
                          controller.cliked();
                        },
                        child: Icon(
                          Icons.favorite,
                          color: controller.click ? appColor : null,
                        )),
                  ),
                  ListTile(
                    leading: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {
                                controller.minus();
                                //setState(() {});
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              )),
                          Text(
                            controller.count.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          InkWell(
                              onTap: () {
                                controller.plus();
                                //setState(() {});
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
                    ),
                    trailing: Text(
                        '${controller.products2[index!].price!}',
                        style: bold),
                  ),
                  ListTile(
                    title: Text(
                      'Product Detail',
                      style: boldjr,
                    ),
                    subtitle: Text(
                      '${'\nMik is An Excellecnt Source of Vitamins And'} ${'\n\nMinerals, Including "Nutrients Of Concern, which'} ${'\n\nAre Under-Onsumed By Many Populations".'}',
                      style: TextStyle(height: 1),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Nurtritions',
                      style: boldjr,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: appColor,
                          ),
                          height: 19,
                          width: 45,
                          child: Text(
                            '100gm',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Review',
                      style: boldjr,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                          5,
                          (context) => Icon(
                                Icons.star,
                                color: Colors.yellow.shade600,
                              )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    height: 50,
                    width: 350,
                    child: MaterialButton(
                      color: appColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (index) => CheckoutScreen()));
                      },
                      child: Text(
                        'Add to Card',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
