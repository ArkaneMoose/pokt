import 'package:flutter/material.dart';

class Store {
  final String name, address, description;
  final Color color;
  Store({
    this.name,
    this.address,
    this.description,
    this.color,
  });
}

List<Store> stores_list = [
  Store(
      name: "North Ave Dining Hall",
      address: "120 North Ave NW, Atlanta GA, 30332",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "McDonalds",
      address: "120 North Ave NW, Atlanta GA, 30332",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "Five Guys Burger and Fries",
      address: "120 North Ave NW, Atlanta GA, 30332",
      description: dummyText,
      color: Color(0xFF989493)),
  Store(
      name: "North Ave Dining Hall",
      address: "120 North Ave NW, Atlanta GA, 30332",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "McDonalds",
      address: "120 North Ave NW, Atlanta GA, 30332",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "Five Guys Burger and Fries",
      address: "120 North Ave NW, Atlanta GA, 30332",
      description: dummyText,
      color: Color(0xFF989493)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
