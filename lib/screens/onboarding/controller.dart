import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/screens/onboarding/states.dart';

import 'model/product.dart';

class OnboardingController extends Cubit<OnboardingStates> {
  var items = [
    Product(
        title: 'Welcom to Groceyrus\n',
        img: 'assets/images/1.jpg',
        description: '15000 + Grocery items available only for you'),
    Product(
        title: 'Fresh Fruits\n',
        img: 'assets/images/2.jpg',
        description: 'Fresh fruits from the fields'),
    Product(
        title: 'Easy Shopping\n',
        img: 'assets/images/3.jpg',
        description: 'Easy and fast way of shopping to save your time'),
    Product(
        title: 'fast Delivery\n',
        img: 'assets/images/4.jpg',
        description: 'Very fast same day delivery '),
  ];



  OnboardingController() : super(InitialState());
  static OnboardingController get(context)=>BlocProvider.of(context);
  int currentPage = 0;
  void changes(i){
    currentPage = i;
  }

}
