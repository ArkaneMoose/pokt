import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokt/models/Product.dart';
import 'package:pokt/models/Store.dart';
import 'package:pokt/screens/storefront/components/store_card.dart';
import 'package:pokt/screens/storefront/components/item_list.dart';

class Body extends StatelessWidget {
  final Store store;
  Body(this.store);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          StoreCard(store: store),
          // Container(
          //   margin: EdgeInsets.only(bottom: size.height * 0.03),
          //   padding: EdgeInsets.only(
          //     top: size.height * 0.25,
          //     left: kDefaultPaddin,
          //     right: kDefaultPaddin,
          //   ),
          //   // height: 500,
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //     borderRadius: BorderRadius.only(
          //       bottomLeft: Radius.circular(24),
          //       bottomRight: Radius.circular(24),
          //     ),
          //   ),
          // ),
          ItemList(category: "Fast Food", items: products),
        ],
      ),
    );
  }
}
