import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pokt/auth.dart';
import 'package:pokt/components/fab_barcode_scan.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/models/Store.dart';
import 'package:pokt/screens/details/details_screen.dart';
import 'package:pokt/screens/storefront/components/body.dart';
import 'package:pokt/screens/cart/cart_screen.dart';
import 'package:pokt/models/Product.dart';

class StorefrontScreen extends StatelessWidget {
  final Store store;
  StorefrontScreen(this.store);

  @override
  Widget build(BuildContext context) {
    return AuthGate(
      child: Scaffold(
        floatingActionButton: store.type != 'food'
            ? FabBarcodeScan(
                onBarcodeScanned: (result) {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[0],
                        ),
                      ));
                },
              )
            : null,
        appBar: buildAppBar(context),
        body: Body(store),
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
