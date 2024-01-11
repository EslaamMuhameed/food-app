import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';
import 'package:food/screens/home_page/dashboard/widgets/popular_deal_items.dart';

import '../controller.dart';

class PopularDeals extends StatelessWidget {
  final controller = DashboardController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Popular Deals',
            style: bold,
          ),
          trailing: Text(
            'See All',
            style: TextStyle(color: appColor, fontWeight: FontWeight.bold),
          ),
        ),
        PopularDealsItems(),
      ],
    );
  }
}
