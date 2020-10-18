import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pokt/constants.dart';

AppBar groceryAppBar(BuildContext context) {
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
