import 'package:flutter/material.dart';

import '../controller.dart';
import 'oats/view.dart';

class recipItems extends StatelessWidget {
  final String? img;
  final RecipeController? controller;
  final int? index;

  recipItems({Key? key, this.img, this.controller, this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (i) => OatsScreen(
                      controller: controller,
                      index: index,
                    )));
      },
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.asset(
          img!,
          fit: BoxFit.fill,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
