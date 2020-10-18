import 'package:flutter/material.dart';
import 'package:pokt/components/search_box.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/screens/home/components/discount_card_retail.dart';
import 'package:pokt/screens/home/components/item_list.dart';
import 'package:pokt/models/Store.dart';

class BodyRetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          DiscountCardRetail(),
          ItemList(
              category: "Technology",
              stores: retail_tech,
              imgColor: kPrimaryColorRetail),
          ItemList(
              category: "General",
              stores: retail_general,
              imgColor: kPrimaryColorRetail),
          ItemList(
              category: "Home",
              stores: retail_home,
              imgColor: kPrimaryColorRetail),
        ],
      ),
    );
  }
}
