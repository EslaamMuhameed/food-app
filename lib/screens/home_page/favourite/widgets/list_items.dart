import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food/screens/home_page/favourite/states.dart';
import '../../../constans.dart';
import '../controller.dart';
import 'items.dart';
import 'orders/view.dart';

class ListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouritesController(),
      child: BlocConsumer<FavouritesController, FavouriteStates>(
        listener: (context, state) {},
        builder: (context, state) {
          FavouritesController controller = FavouritesController.get(context);
          return ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) => Slidable(
              startActionPane: ActionPane(
                motion:  ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (BuildContext context) {
                      controller.remove(index);
                    },
                    foregroundColor: Colors.black,
                    backgroundColor: appColor,
                    icon: Icons.delete,
                  ),
                  SlidableAction(
                    onPressed: (BuildContext context) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrdersScreen()));
                    },
                    foregroundColor: appColor,
                    icon: Icons.shopping_cart_outlined,
                  )
                ],
              ),
              child: Items(
                index: index,
              ),
            ),
          );
        },
      ),
    );
  }
}
