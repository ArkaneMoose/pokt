import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pokt/auth.dart';
import 'package:pokt/components/fab_barcode_scan.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/screens/storefront/components/body.dart';

class StorefrontScreen extends AuthGatedStatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      floatingActionButton: FabBarcodeScan(),
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
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
