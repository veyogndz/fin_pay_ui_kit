import 'package:fin_pay_ui_kit/atomic_design/atom/setting_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/text_button.dart';
import 'package:fin_pay_ui_kit/screens/notifications.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var isSelected1 = [false, true];
  var isSelected2 = [false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_sharp,
                  size: 30.r,
                  color: Colors.black,
                )),
          ),
          leadingWidth: 80.w,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 24.r, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 32.h),
            Text(
              "General",
              style: TextStyle(fontSize: 14.r, color: UtilColor.dotGrey),
            ),
            SizedBox(height: 16.h),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Dark Mode"),
                    SwitchScreen()
                  ],
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Reset Password"),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30,
                      color: UtilColor.dotGrey,
                    )
                  ],
                ),
                SizedBox(height: 32.h),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Notifications()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SettingText(variable: "Notifications"),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 30,
                        color: UtilColor.dotGrey,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Privacy Settings"),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30,
                      color: UtilColor.dotGrey,
                    )
                  ],
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Help Center"),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30,
                      color: UtilColor.dotGrey,
                    )
                  ],
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Contact Us"),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30,
                      color: UtilColor.dotGrey,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Text(
              "Follow Us",
              style: TextStyle(fontSize: 15.r, color: UtilColor.dotGrey),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                SvgPicture.asset("assets/twitter.svg"),
                SizedBox(width: 24.w),
                SvgPicture.asset("assets/facebook.svg"),
                SizedBox(width: 24.w),
                SvgPicture.asset("assets/tiktok.svg"),
                SizedBox(width: 24.w),
                SvgPicture.asset("assets/instagram.svg"),
              ],
            ),
            SizedBox(height: 35.h),
            TextsButton(
                variable: "Log out",
                color: UtilColor.redColor,
                color2: Colors.white,
                variable2: "",
                fontSize: 16.r),
            SizedBox(height: 16.h),
            Center(
              child: Text(
                "Finpay © 2021 v1.0",
                style: TextStyle(
                  fontSize: 14.r,
                  color: UtilColor.dotGrey
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  SwitchClass createState() => SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: 1.5,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor:Colors.white,
            activeTrackColor: UtilColor.difBlue,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: UtilColor.iconWhite,
          )),
    ]);
  }
}
