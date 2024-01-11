import 'package:flutter/material.dart';
import 'package:food/screens/home_page/favourite/widgets/orders/widgets/items.dart';

import '../../../../constans.dart';
import 'controller.dart';

class OrdersScreen extends StatelessWidget {
  final controller = OrderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Orders', style: bold),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.black,
                labelColor: appColor,
                indicatorColor: appColor,
                tabs: [
                  Tab(
                    text: 'Ongoing',
                  ),
                  Tab(
                    text: 'History',
                  ),
                ],
              ),
              Container(
                height: 1,
                color: Colors.grey,
                width: double.infinity,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: List.generate(
                              3,
                              (index) => Items(
                                    controller: controller,
                                    index: index,
                                  )),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: List.generate(
                              3,
                              (index) => Items(
                                    controller: controller,
                                    index: index,
                                  )),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
