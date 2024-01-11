import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/home_page/dashboard/widgets/checkout/order_summary/widgts/items.dart';

import '../../../../../constans.dart';
import 'controller.dart';

class OrderSummaryScreen extends StatelessWidget {
  final controller = OrderSummaryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Order summary', style: bold),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Column(
              children: List.generate(
                  2,
                  (index) => Items(
                        index: index,
                      )),
            ),
            Spacer(
              flex: 8,
            ),
            Container(
              height: 50,
              width: 350,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: backgroundColor,
                      context: context,
                      builder: (i) => orderItems());
                },
                color: appColor,
                child: Text(
                  'Checkout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
