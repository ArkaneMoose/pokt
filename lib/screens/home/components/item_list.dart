import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/models/Store.dart';
import 'package:pokt/screens/home/components/item_card.dart';
import 'package:pokt/screens/storefront/storefront_screen.dart';

class ItemList extends StatelessWidget {
  final String category;
  final Color imgColor;
  final List<Store> stores;
  const ItemList({Key key, this.category, this.stores, this.imgColor})
      : super(key: key);

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
                  children: stores
                      .map((s) => ItemCard(
                            imgColor: imgColor,
                            svgSrc: "assets/icons/burger_beer.svg",
                            name: s.name,
                            address: s.address,
                            press: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return StorefrontScreen();
                                  },
                                ),
                              );
                            },
                          ))
                      .toList(),
                ),
              )
            ]));
  }
}
