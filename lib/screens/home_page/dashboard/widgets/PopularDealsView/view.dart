import 'package:flutter/material.dart';
import '../../controller.dart';
import 'components/details.dart';

class PopularDealsViewScreen extends StatelessWidget {
  final DashboardController? controller;
  final int? index;
  PopularDealsViewScreen({this.controller, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(controller!.products2[index!].img!),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
        ),
        leading: Align(
            alignment: Alignment.topCenter,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
              ),
            )),
        toolbarHeight: MediaQuery.of(context).size.height / 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      body: Details(
        index: index,
      ),
    );
  }
}
