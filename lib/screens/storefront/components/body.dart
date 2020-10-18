import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokt/api/ncr.dart';
import 'package:pokt/models/Product.dart';
import 'package:pokt/models/Store.dart';
import 'package:pokt/screens/storefront/components/store_card.dart';
import 'package:pokt/screens/storefront/components/item_list.dart';

class Body extends StatefulWidget {
  final Store store;
  Body(this.store);

  @override
  _BodyState createState() => _BodyState(store);
}

class _BodyState extends State<Body> {
  Store _store;
  List<Product> _products;
  _BodyState(this._store);

  @override
  void initState() {
    super.initState();
    callApi();
  }

  void callApi() async {
    final response = await Ncr.get(
        'https://gateway-staging.ncrcloud.com/catalog/items/?packageIdentifierPattern=${_store.type}');
    final responses = await Future.wait(
        (response['pageContent'] as List<dynamic>).map((entry) => Future.wait([
              Ncr.get(
                  'https://gateway-staging.ncrcloud.com/catalog/items/${entry['itemId']['itemCode']}'),
              Ncr.get(
                  'https://gateway-staging.ncrcloud.com/catalog/item-prices/${entry['itemId']['itemCode']}/${entry['itemId']['itemCode']}',
                  headers: {
                    'nep-enterprise-unit': '4284bf294fad4e1399c26861bf25ff52',
                  }),
            ])));
    setState(() {
      _products = responses
          .map((entry) => Product(
                color: Color(int.parse(
                        (((entry[0]['dynamicAttributes'] as List<dynamic>)
                                            .firstWhere((element) =>
                                                element['type'] == 'color')[
                                        'attributes'] as List<dynamic>)
                                    .firstWhere((element) =>
                                        element['key'] == 'primary')['value']
                                as String)
                            .substring(1, 7),
                        radix: 16) |
                    0xFF000000),
                description: entry[0]['shortDescription']['values'].firstWhere(
                    (element) => element['locale'] == 'en-US')['value'],
                id: int.parse(entry[0]['itemId']['itemCode']),
                image:
                    'assets/images/${entry[0]['shortDescription']['values'].firstWhere((element) => element['locale'] == 'en-US')['value']}.png',
                price: entry[1]['price'],
                size: 0,
                title: entry[0]['shortDescription']['values'].firstWhere(
                    (element) => element['locale'] == 'en-US')['value'],
              ))
          .toList();
    });
  }

  @override
  void didUpdateWidget(covariant Body oldWidget) {
    super.didUpdateWidget(oldWidget);
    _store = this.widget.store;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          StoreCard(store: _store),
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
          _products != null
              ? ItemList(category: "Fast Food", items: _products)
              : Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
