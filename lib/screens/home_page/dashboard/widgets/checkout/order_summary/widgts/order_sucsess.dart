import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';

class OrderSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                child: Icon(
                  Icons.card_giftcard,
                  size: 150,
                  color: appColor,
                ),
              )),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              'Your order has been ${'\n\nplaced sucessfully'}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  height: 0.8),
                            ),
                            Text(
                              '\n\nYour itmes has been placed and is ${'\n\non it;s way to being processed'}',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: appColor,
                            child: Text(
                              'Continue Shopping',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
