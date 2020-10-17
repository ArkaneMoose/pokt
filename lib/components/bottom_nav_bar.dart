import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35, right: 35, bottom: 5),
      height: 75,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Ionicons.fast_food_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Ionicons.basket_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Ionicons.pricetag_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Ionicons.person_outline),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
