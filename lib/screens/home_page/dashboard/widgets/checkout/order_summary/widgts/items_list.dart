import 'package:flutter/material.dart';

import '../../../../../../constans.dart';
import '../controller.dart';

class ItemsList extends StatelessWidget {

  final OrderSummaryController? controller;
  final int? index;

   ItemsList({ this.controller, this.index}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Text(
              controller!.checks[index!].title!,
              style: boldjr,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  controller!.checks[index!].subtitle!,
                  style: controller!.checks[index!].style!,
                  textAlign: TextAlign.right,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
