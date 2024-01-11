import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/screens/home_page/dashboard/states.dart';

import 'model/product.dart';

class DashboardController extends Cubit<Dashboardstates>{
  var products = [
    CategoriesProduct(
      img: 'assets/images/vegatables.jpg',
      title: 'Vegtables',
    ),
    CategoriesProduct(
      img: 'assets/images/fruits.jpg',
      title: 'Fruits',
    ),
    CategoriesProduct(
      img: 'assets/images/meats.jpeg',
      title: 'Meat & fish',
    ),
    CategoriesProduct(
      img: 'assets/images/eggs.jpg',
      title: 'Diary & egg',
    ),
    CategoriesProduct(
      img: 'assets/images/drinks.jpg',
      title: 'Beverages',
    ),
  ];

  var products2 = [
    PopularDealProduct(
      title: 'Chicken',
      img: 'assets/images/Chicken2.jpg',
      price: '\$3.10',
      subtitle: '1kg, with skin',
    ),
    PopularDealProduct(
      title: 'Red Apples',
      img: 'assets/images/apple.jpg',
      price: '\$1.99',
      subtitle: '1kg, indian',
    ),
  ];

  int current = 0;
  int selected = 0;
  bool click = false;
  int count = 1;

  DashboardController() : super(InitialState());
  static DashboardController get(context)=>BlocProvider.of(context);


void cliked(){
  click =!click;
  emit(ClickState());
}

  void plus() {
    if (count < 10) {
      count++;
      emit(PlusState());
    }
  }

  void minus() {
    if (count > 1) {
      emit(MinusState());
      count--;
    }
  }

  List days = [
    'SUN',
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SAT',
    'SUN',
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SAT',
    'SUN',
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SAT',
    'SUN',
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SAT',
    'SUN',
    'MON',
  ];
}
