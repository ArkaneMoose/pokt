import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kPrimaryColorFood = Color(0xFFFFC61F);
const kPrimaryColorRetail = Color(0xFF1FFFC6);
const kPrimaryColorGrocery = Color(0xFF58FF1F);
const kDarkPrimaryColor = Color(0xFF606060);
const kDarkSecondaryColor = Color(0xFFB5BFD0);
const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;
const kSpacingUnit = 10;

final kTitleTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 3.4),
  fontWeight: FontWeight.w600,
);

final kCaptionTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.4),
  fontWeight: FontWeight.w300,
);

final kButtonTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
  fontWeight: FontWeight.w400,
  color: kDarkPrimaryColor,
);
