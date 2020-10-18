import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokt/components/search_box.dart';
import 'package:pokt/models/Product.dart';
import 'package:pokt/screens/storefront/components/discount_card.dart';
import 'package:pokt/screens/storefront/components/item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          ItemList(category: "Fast Food", items: products),
          DiscountCard(),
        ],
      ),
    );
  }
}
