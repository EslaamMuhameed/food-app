import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/screens/home_page/dashboard/states.dart';

import '../../../../../../constans.dart';
import '../controller.dart';
import 'items_list.dart';
import 'order_sucsess.dart';

class Items extends StatelessWidget {
  final int? index;

  Items({this.index});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderSummaryController(),
      child: BlocConsumer<OrderSummaryController, Dashboardstates>(
        listener: (context, state) {},
        builder: (context, state) {
          OrderSummaryController controller =
              OrderSummaryController.get(context);
          return Card(
            elevation: 2,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              width: double.infinity,
              height: 120,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(controller.products[index!].img!),
                            fit: BoxFit.cover)),
                    width: 100,
                    height: 80,
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
                            TextSpan(text: controller.products[index!].title!),
                            TextSpan(
                                text:
                                    '\n${controller.products[index!].subtitle!}',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: '\n${controller.products[index!].price!}',
                                style: TextStyle(color: appColor)),
                          ])),
                  Spacer(
                    flex: 3,
                  ),
                  Container(
                    //margin: EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              controller.minus();
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
                    height: 30,
                    width: 80,
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

class orderItems extends StatefulWidget {
  @override
  _orderItemsState createState() => _orderItemsState();
}

bool isChecked = false;
final controller = OrderSummaryController();

class _orderItemsState extends State<orderItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Checkout',
              style: boldjr,
            ),
            trailing: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.clear,
                  color: Colors.black,
                )),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: List.generate(
                        4,
                        (context) => ItemsList(
                              controller: controller,
                              index: context,
                            )),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.green,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      Text(
                          'By placing an order you agree to our${'\nTerms And conditions'} ')
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    height: 50,
                    width: double.infinity,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderSuccess()));
                      },
                      color: appColor,
                      child: Text(
                        'Place Order',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(50))),
    );
  }
}
