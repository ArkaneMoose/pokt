import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokt/auth.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/models/Product.dart';
import 'package:pokt/screens/cart/cart_screen.dart';
import 'package:pokt/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AuthGate(
      child: Scaffold(
        // each product have a color
        backgroundColor: product.color,
        appBar: buildAppBar(context),
        body: Body(product: product),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
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
