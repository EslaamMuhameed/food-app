import 'package:flutter/material.dart';

import 'model/product.dart';

class OrderController {
  var products = [
    Product(
        color: Colors.green,
        title: 'Order #322',
        subtitle: 'Deliverd',
        check: Container(
          decoration:
              BoxDecoration(color: Colors.green, shape: BoxShape.circle),
          height: 30,
          width: 25,
          child: Icon(
            Icons.check,
            color: Colors.white,
          ),
        )),
    Product(
        color: Colors.green,
        title: 'Order #322',
        subtitle: 'Deliverd',
        check: Container(
          decoration:
              BoxDecoration(color: Colors.green, shape: BoxShape.circle),
          height: 30,
          width: 25,
          child: Icon(
            Icons.check,
            color: Colors.white,
          ),
        )),
    Product(
        color: Colors.red,
        title: 'Order #325',
        subtitle: 'Cancelled',
        check: Container(
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          height: 30,
          width: 25,
          child: Icon(
            Icons.clear,
            color: Colors.white,
          ),
        )),
  ];
}
