import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/screens/home_page/favourite/states.dart';

import 'model/product.dart';

class FavouritesController extends Cubit<FavouriteStates> {


  FavouritesController() : super(InitialState());

static FavouritesController get(context)=>BlocProvider.of(context);


  void remove(int i)
  {
    products.removeAt(i);
    emit(RemoveItemState());
  }

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
      img: 'assets/images/apple.jpg',
      title: 'Red Apples',
      subtitle: '1kg, indian',
      price: '\$1.99',

    ),
    Product(
      img: 'assets/images/egg.jpg',
      title: 'Eggs',
      subtitle: '1dozen, Local',
      price: '\$1.50',

    ),
    Product(
      img: 'assets/images/prawns.jpg',
      title: 'Prawns',
      subtitle: '1kg, Fry',
      price: '\$2.10',

    ),
    Product(
      img: 'assets/images/Chicken2.jpg',
      title: 'Chicken',
      subtitle: '1kg, with skin',
      price: '\$3.10',

    ),
  ];
}
