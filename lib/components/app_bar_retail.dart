import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pokt/constants.dart';

AppBar retailAppBar(BuildContext context) {
  return AppBar(
    brightness: Brightness.light,
    backgroundColor: kPrimaryColorRetail.withOpacity(0.08),
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
            style: TextStyle(color: kDarkPrimaryColor),
          ),
          TextSpan(
            text: "Retail",
            style: TextStyle(color: kPrimaryColorRetail),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Ionicons.cart_outline, color: kDarkPrimaryColor),
        onPressed: () {},
      ),
      SizedBox(width: kDefaultPaddin / 2)
    ],
  );
}
