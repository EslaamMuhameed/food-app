import 'package:flutter/material.dart';

import '../constans.dart';

class DefultButton extends StatelessWidget {
  final String? text;
  final press;

  const DefultButton({Key? key, this.text, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        onPressed: press,
        color: appColor,
        child: Text(
          text!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
