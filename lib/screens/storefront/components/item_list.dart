import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/models/Product.dart';
import 'package:pokt/screens/details/details_screen.dart';
import 'package:pokt/screens/storefront/components/item_card.dart';

class ItemList extends StatelessWidget {
  final String category;
  final List<Product> items;
  const ItemList({Key key, this.category, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.category,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: items
                      .map((s) => ItemCard(
                            product: s,
                            press: () => Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => DetailsScreen(
                                    product: s,
                                  ),
                                )),
                          ))
                      .toList(),
                ),
              )
            ]));
  }
}
