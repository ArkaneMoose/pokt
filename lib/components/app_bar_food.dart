import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokt/screens/cart/cart_screen.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pokt/constants.dart';

AppBar foodAppBar(BuildContext context) {
  return AppBar(
    brightness: Brightness.light,
    backgroundColor: kPrimaryColorFood.withOpacity(0.08),
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
            text: "Food",
            style: TextStyle(color: kPrimaryColorFood),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Ionicons.cart_outline, color: kDarkPrimaryColor),
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) {
                return CartScreen();
              },
            ),
          );
        },
      ),
      SizedBox(width: kDefaultPaddin / 2)
    ],
  );
}
