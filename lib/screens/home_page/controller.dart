import 'package:food/screens/home_page/recipe/view.dart';
import 'package:food/screens/home_page/shopping/view.dart';

import 'dashboard/view.dart';
import 'favourite/view.dart';
import 'login/view.dart';

class PagesConroller {
  int selected = 0;
  var pages = [
    DashboardScreen(),
    RecipeScreen(),
    FavouriteScreen(),
    ShoppingScreen(),
    LoginScreen(),
  ];
}
