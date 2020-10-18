import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/models/Product.dart';
import 'package:pokt/screens/storefront/components/discount_card.dart';
import 'package:pokt/screens/storefront/components/item_list.dart';
import 'package:pokt/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: size.height * 0.03),
            padding: EdgeInsets.only(
              top: size.height * 0.25,
              left: kDefaultPaddin,
              right: kDefaultPaddin,
            ),
            // height: 500,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
          ),
          ItemList(category: "Fast Food", items: products),
          DiscountCard(),
        ],
      ),
    );
  }
}
