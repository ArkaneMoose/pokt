import 'package:flutter/material.dart';

const kPrimaryColorFood = Color(0xFFFFC61F);
const kPrimaryColorRetail = Color(0xFF1FFFC6);
const kPrimaryColorGrocery = Color(0xFF58FF1F);
const kKindaBlack = Color(0xFF606060);
const ksecondaryColor = Color(0xFFB5BFD0);
const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);
const kDefaultPaddin = 20.0;

//error messages
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
