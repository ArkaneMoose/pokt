import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pokt/constants.dart';

AppBar foodAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Pokt",
            style: TextStyle(color: kPrimaryDark),
          ),
          TextSpan(
            text: "Food",
            style: TextStyle(color: kPrimaryColorFood),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Ionicons.cart_outline, color: kPrimaryDark),
        onPressed: () {},
      ),
      SizedBox(width: kDefaultPaddin / 2)
    ],
  );
}
