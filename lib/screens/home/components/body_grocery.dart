import 'package:flutter/material.dart';
import 'package:pokt/components/search_box.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/screens/home/components/discount_card_grocery.dart';
import 'package:pokt/screens/home/components/item_list.dart';
import 'package:pokt/models/Store.dart';

class BodyGrocery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          ItemList(
              category: "Most Popular",
              stores: grocery_mp,
              imgColor: kPrimaryColorGrocery),
          ItemList(
              category: "Wholesale",
              stores: grocery_wholesale,
              imgColor: kPrimaryColorGrocery),
          DiscountCardGrocery(),
          ItemList(
              category: "International",
              stores: grocery_int,
              imgColor: kPrimaryColorGrocery),
        ],
      ),
    );
  }
}
