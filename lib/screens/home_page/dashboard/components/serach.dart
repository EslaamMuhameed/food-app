import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        textDirection: TextDirection.ltr,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          hintText: 'Search for Anything',
          hintTextDirection: TextDirection.ltr,
          icon: Image.asset(
            'assets/images/filter.png',
            height: 25,
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
