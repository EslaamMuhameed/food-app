import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/screens/constans.dart';
import 'package:food/screens/home_page/dashboard/states.dart';

import 'model/product.dart';

class OrderSummaryController extends Cubit<Dashboardstates> {


  OrderSummaryController() : super(InitialState());

  static OrderSummaryController get(context) => BlocProvider.of(context);
  int count = 1;
  void plus() {
    if (count < 10) {
      count++;
      emit(PlusState());
    }
  }

  void minus() {
    if (count > 1) {
      count--;
      emit(MinusState());
    }
  }

  var products = [
    Product(
      img: 'assets/images/Fry.jpg',
      title: 'Chicken Fry',
      subtitle: '1kg, Fry',
      price: '\$3.30',
    ),
    Product(
      img: 'assets/images/salad.jpg',
      title: 'Salad',
      subtitle: '1kg, Fresh',
      price: '\$3.10',
    ),
  ];

  var checks = [
    Checkout(
        title: 'Delivery',
        subtitle: 'Select Method & Time',
        style: TextStyle(color: Colors.grey.shade700)),
    Checkout(
        title: 'Payment',
        subtitle: 'Select Method',
        style: TextStyle(color: Colors.grey.shade700)),
    Checkout(
        title: 'Promo Code',
        subtitle: 'Pick discount',
        style: TextStyle(color: Colors.grey.shade700)),
    Checkout(
        title: 'Total Cost',
        subtitle: '\$13.97',
        style: TextStyle(color: appColor, fontWeight: FontWeight.bold)),
  ];
}
