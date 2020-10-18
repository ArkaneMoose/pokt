import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pokt/constants.dart';
import 'package:pokt/screens/profile/components/profile_list_item.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);

    var profileInfo = Column(
      children: <Widget>[
        Container(
          height: kSpacingUnit.w * 10,
          width: kSpacingUnit.w * 10,
          margin: EdgeInsets.only(top: kSpacingUnit.w * 2),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: kPrimaryColorFood.withOpacity(0.5),
                radius: kSpacingUnit.w * 5,
                // backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: kSpacingUnit.w * 2.5,
                  width: kSpacingUnit.w * 2.5,
                  decoration: BoxDecoration(
                    color: kPrimaryColorFood,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    heightFactor: kSpacingUnit.w * 1.5,
                    widthFactor: kSpacingUnit.w * 1.5,
                    child: Icon(
                      LineAwesomeIcons.pen,
                      color: kDarkPrimaryColor,
                      size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: kSpacingUnit.w * 2),
        Text(
          'Anthony Doljac',
          style: kTitleTextStyle,
        ),
        SizedBox(height: kSpacingUnit.w * 0.5),
        Text(
          'adoljac@gmail.com',
          style: kCaptionTextStyle,
        ),
        SizedBox(height: kSpacingUnit.w * 2),
      ],
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: kSpacingUnit.w * 5),
          profileInfo,
          Expanded(
            child: ListView(
              children: <Widget>[
                ProfileListItem(
                  icon: Ionicons.shield_outline,
                  text: 'Privacy',
                ),
                ProfileListItem(
                  icon: Ionicons.time_outline,
                  text: 'Purchase History',
                ),
                ProfileListItem(
                  icon: Ionicons.help_outline,
                  text: 'Help & Support',
                ),
                ProfileListItem(
                  icon: Ionicons.settings_outline,
                  text: 'Settings',
                ),
                ProfileListItem(
                  icon: Ionicons.person_add_outline,
                  text: 'Invite a Friend',
                ),
                ProfileListItem(
                  icon: Ionicons.log_out_outline,
                  text: 'Logout',
                  hasNavigation: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
