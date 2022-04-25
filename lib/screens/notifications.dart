import 'package:fin_pay_ui_kit/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../atomic_design/atom/setting_text.dart';
import '../util/util_colors.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
              "Notifications",
              style: TextStyle(fontSize: 24.r, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 32.h),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Fee alert"),
                    SwitchScreen()
                  ],
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Big expense alert"),
                    SwitchScreen()
                  ],
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Credit utilization alert"),
                    SwitchScreen()
                  ],
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Low balance alert"),
                    SwitchScreen()
                  ],
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Recurring paid alert"),
                    SwitchScreen()
                  ],
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SettingText(variable: "Spending update"),
                    SwitchScreen()
                  ],
                ),
              ],
            ),
            SizedBox(height: 100.h),
            SizedBox(
              width: 327.w,
              height: 56.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Save Changes",
                  style: TextStyle(fontSize: 16.r),
                ),
                style: ElevatedButton.styleFrom(
                  primary: UtilColor.difBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
