

import 'model/product.dart';

class RecipeController {
  var products = [
    CategoriesProduct(
      img: 'assets/images/breakfast.jpg',
      title: 'Breakfast',
    ),
    CategoriesProduct(
      img: 'assets/images/lunch.jpg',
      title: 'Lunch',
    ),
    CategoriesProduct(
      img: 'assets/images/Appetizers.jpg',
      title: 'Appetizers',
    ),
    CategoriesProduct(
      img: 'assets/images/fastfood.jpg',
      title: 'Fast food',
    ),
    CategoriesProduct(
      img: 'assets/images/soups.jpg',
      title: 'Soups',
    ),
  ];



  int current = 0;
  int selected=0;
  bool click = false;

  var productRecipes = [

    RecipesProduct(img: 'assets/images/SavouryOats.jpg'),
    RecipesProduct(img: 'assets/images/porridge.jpg')
  ];

  int count =1;

  void plus() {
    if (count < 10) {
      count++;
    }
  }

  void minus() {
    if (count > 1) {
      count--;
    }
  }



}


class RecipesProduct{
  final String? img;
  RecipesProduct({this.img});

}