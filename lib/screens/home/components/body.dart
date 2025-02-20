import 'package:flutter/material.dart';
import 'package:pokt/components/search_box.dart';
import 'package:pokt/screens/home/components/discount_card.dart';
import 'package:pokt/screens/home/components/item_list.dart';
import 'package:pokt/models/Store.dart';

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
          ItemList(category: "Fast Food", stores: stores_list),
          DiscountCard(),
          ItemList(category: "Fine Dining", stores: stores_list),
          ItemList(category: "Fresh Orangutan", stores: stores_list),
        ],
      ),
    );
  }
}
