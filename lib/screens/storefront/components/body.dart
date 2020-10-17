import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/models/Product.dart';
import 'package:pokt/screens/details/details_screen.dart';
import 'package:pokt/screens/storefront/components/discount_card.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // DiscountCard(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],
                        ),
                      )),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
