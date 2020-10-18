import 'package:flutter/material.dart';
import 'package:pokt/components/search_box.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/screens/home/components/discount_card_food.dart';
import 'package:pokt/screens/home/components/item_list.dart';
import 'package:pokt/models/Store.dart';

class BodyFood extends StatelessWidget {
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
              category: "Fast Food",
              stores: food_sitdine,
              imgColor: kPrimaryColorFood),
          DiscountCardFood(),
          ItemList(
              category: "Fine Dining",
              stores: food_fast,
              imgColor: kPrimaryColorFood),
          ItemList(
              category: "Fresh Orangutan",
              stores: food_delivery,
              imgColor: kPrimaryColorFood),
        ],
      ),
    );
  }
}
