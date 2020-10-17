import 'package:flutter/material.dart';
import 'package:pokt/components/bottom_nav_bar.dart';
import 'package:pokt/components/app_bar_food.dart';
import 'package:pokt/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: foodAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
