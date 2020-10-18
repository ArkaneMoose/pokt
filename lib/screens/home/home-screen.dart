import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pokt/auth.dart';
import 'package:pokt/components/app_bar_food.dart';
import 'package:pokt/components/app_bar_grocery.dart';
import 'package:pokt/components/app_bar_retail.dart';
import 'package:pokt/components/app_bar_profile.dart';
import 'package:pokt/components/bottom_nav_bar.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/screens/home/components/body.dart';

final List<_Tab> tabs = [
  _Tab(
    tab: TabButton(
      icon: Icon(Ionicons.fast_food_outline),
      label: 'Food',
    ),
    child: Body(),
    primaryColor: kPrimaryColorFood,
    appBar: foodAppBar,
  ),
  _Tab(
    tab: TabButton(
      icon: Icon(Ionicons.basket_outline),
      label: 'Grocery',
    ),
    child: Body(),
    primaryColor: kPrimaryColorGrocery,
    appBar: groceryAppBar,
  ),
  _Tab(
    tab: TabButton(
      icon: Icon(Ionicons.pricetag_outline),
      label: 'Retail',
    ),
    child: Body(),
    primaryColor: kPrimaryColorRetail,
    appBar: retailAppBar,
  ),
  _Tab(
    tab: TabButton(
      icon: Icon(Ionicons.person_outline),
      label: 'Profile',
    ),
    child: Body(),
    primaryColor: kPrimaryColorFood,
    appBar: profileAppBar,
  ),
];

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _tabIndex;
  final List<TabButton> _navBarTabs = tabs.map((tab) => tab.tab).toList();
  final List<Widget> _tabViews = tabs.map((tab) => tab.child).toList();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabIndex = _tabController.index;
    _tabController.animation.addListener(onTabControllerChange);
  }

  @override
  void dispose() {
    _tabController.animation.removeListener(onTabControllerChange);
    _tabController.dispose();
    super.dispose();
  }

  void onTabControllerChange() {
    final newTabIndex = _tabController.index;
    if (newTabIndex != _tabIndex) {
      setState(() {
        _tabIndex = newTabIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final tab = tabs[_tabIndex];
    return AuthGate(
      child: Scaffold(
        appBar: tab.appBar != null ? tab.appBar(context) : null,
        bottomNavigationBar: BottomNavBar(
          tabs: _navBarTabs,
          tabController: _tabController,
          tabIndex: _tabIndex,
          primaryColor: tab.primaryColor,
        ),
        body: TabBarView(
          children: _tabViews,
          controller: _tabController,
        ),
      ),
    );
  }
}

class _Tab {
  final TabButton tab;
  final AppBar Function(BuildContext) appBar;
  final Color primaryColor;
  final Widget child;
  const _Tab({this.tab, this.appBar, this.primaryColor, this.child});
}
