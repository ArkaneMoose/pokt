import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pokt/auth.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/screens/storefront/components/body.dart';
import 'package:pokt/screens/cart/cart_screen.dart';

class StorefrontScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthGate(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: Body(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Ionicons.search_outline, color: kDarkPrimaryColor),
          onPressed: () {},
        ),
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
}
