import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pokt/constants.dart';

AppBar groceryAppBar(BuildContext context) {
  return AppBar(
    brightness: Brightness.light,
    backgroundColor: kPrimaryColorGrocery.withOpacity(0.08),
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
            text: "Grocery",
            style: TextStyle(color: kPrimaryColorGrocery),
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
