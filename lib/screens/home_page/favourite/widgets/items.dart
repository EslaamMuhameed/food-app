import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/screens/home_page/favourite/controller.dart';
import 'package:food/screens/home_page/favourite/states.dart';

import '../../../constans.dart';

class Items extends StatelessWidget {
  final int? index;

  const Items({Key? key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouritesController(),
      child: BlocConsumer<FavouritesController, FavouriteStates>(
        listener: (context, state) {},
        builder: (context, state) {
          FavouritesController controller  = FavouritesController.get(context);
          return Card(
            elevation: 2,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(top: 25),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              width: double.infinity,
              height: 120,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(controller.products[index!].img!),
                            fit: BoxFit.cover)),
                    width: 100,
                    height: 80,
                  ),
                  Spacer(),
                  RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(text: controller.products[index!].title!),
                            TextSpan(
                                text:
                                '\n${controller.products[index!].subtitle!}',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: '\n${controller.products[index!].price!}'),
                          ])),
                  Spacer(
                    flex: 3,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              controller.minus();
                            },
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                        Text(
                          controller.count.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        InkWell(
                            onTap: () {
                              controller.plus();
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: appColor,
                        borderRadius: BorderRadius.circular(20)),
                    height: 30,
                    width: 80,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
