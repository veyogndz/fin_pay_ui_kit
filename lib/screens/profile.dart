import 'package:dotted_border/dotted_border.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/text_button.dart';
import 'package:fin_pay_ui_kit/screens/settings.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentTab = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UtilColor.difBlue,
      floatingActionButton: Container(
        color: Colors.white,
        child: FloatingActionButton(
          backgroundColor: UtilColor.difBlue,
          child: SvgPicture.asset("assets/float_icon.svg"),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10.r,
          child: SizedBox(
            height: 60.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/home_icon.svg",
                            color: currentTab == 0
                                ? UtilColor.difBlue
                                : UtilColor.bottomGrey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                                fontSize: 12.r,
                                color: currentTab == 0
                                    ? UtilColor.difBlue
                                    : UtilColor.bottomGrey),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/statistic_icon.svg",
                              color: currentTab == 1
                                  ? UtilColor.difBlue
                                  : UtilColor.bottomGrey),
                          Text(
                            'Statistic',
                            style: TextStyle(
                                fontSize: 12.r,
                                color: currentTab == 1
                                    ? UtilColor.difBlue
                                    : UtilColor.bottomGrey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/card_icon.svg",
                              color: currentTab == 2
                                  ? UtilColor.difBlue
                                  : UtilColor.bottomGrey),
                          Text(
                            'Cards',
                            style: TextStyle(
                                fontSize: 12.r,
                                color: currentTab == 2
                                    ? UtilColor.difBlue
                                    : UtilColor.bottomGrey),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/profile_icon.svg",
                              color: currentTab == 3
                                  ? UtilColor.difBlue
                                  : UtilColor.bottomGrey),
                          Text(
                            'Profile',
                            style: TextStyle(
                                fontSize: 12.r,
                                color: currentTab == 3
                                    ? UtilColor.difBlue
                                    : UtilColor.bottomGrey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 55.h),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.r),
                topLeft: Radius.circular(16.r)),
            color: Colors.white,
          ),
          width: 375.w,
          height: 900.h,
          child: Padding(
            padding: EdgeInsets.only(right: 24.w, left: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24.h, left: 289.w),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()),
                      );
                    },
                    icon: const Icon(Icons.settings, color: Colors.black),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 80.w,
                      height: 80.h,
                      child: DottedBorder(
                        dashPattern: [16.r, 6.r],
                        strokeWidth: 3,
                        color: UtilColor.normalOrange,
                        borderType: BorderType.Circle,
                        radius: Radius.circular(100.r),
                        padding: EdgeInsets.all(6.r),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.all(Radius.circular(150.r)),
                          child: Stack(
                            children: [
                              SizedBox(
                                width: 80.w,
                                height: 80.h,
                                child: Image.asset(
                                  "assets/selfies.png",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 38.w, top: 38.h),
                                child: SvgPicture.asset("assets/camera.svg"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Daniel Travis",
                          style: TextStyle(
                              fontSize: 20.r, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          width: 116.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: UtilColor.lightOrange
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Member Gold",
                                style: TextStyle(
                                    fontSize: 12.r,
                                    color: UtilColor.normalOrange),
                              ),
                              SvgPicture.asset("assets/ranking_icon.svg")
                            ],
                          ),
                        )
                      ],
                    ),
                    TextsButton(
                        variable: "Edit Profile",
                        color: UtilColor.difBlue,
                        color2: Colors.white,
                        variable2: "",
                        fontSize: 14.r)
                  ],
                ),
                SizedBox(height: 32.h),
                Text(
                  "Overview",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.r,
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: UtilColor.lightGrey,
                          borderRadius: BorderRadius.circular(16.r)),
                      width: 156.w,
                      height: 100.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 28.0.w),
                            child: Text(
                              "Net Income",
                              style: TextStyle(
                                  fontSize: 14.r,
                                  fontWeight: FontWeight.w600,
                                  color: UtilColor.profileColor),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/income.svg"),
                              SizedBox(width: 12.w),
                              Text(
                                "\$4500",
                                style: TextStyle(
                                    fontSize: 24.r,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Container(
                      decoration: BoxDecoration(
                          color: UtilColor.lightGrey,
                          borderRadius: BorderRadius.circular(16.r)),
                      width: 156.w,
                      height: 100.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 28.0.w),
                            child: Text(
                              "Expense",
                              style: TextStyle(
                                  fontSize: 14.r,
                                  fontWeight: FontWeight.w600,
                                  color: UtilColor.profileColor),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/outcome.svg"),
                              SizedBox(width: 12.w),
                              Text(
                                "\$1691",
                                style: TextStyle(
                                    fontSize: 24.r,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16.h),
                Container(
                  width: 327.w,
                  height: 122.h,
                  decoration: BoxDecoration(
                      color: UtilColor.lightGrey,
                      borderRadius: BorderRadius.circular(16.r)),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 16.w, top: 16.h, right: 16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Spend this week",
                          style: TextStyle(
                              fontSize: 14.r,
                              fontWeight: FontWeight.w600,
                              color: UtilColor.profileColor),
                        ),
                        SizedBox(height: 14.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/bars.png"),
                            Text(
                              "\$124",
                              style: TextStyle(
                                  fontSize: 18.r, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          "\$124 left to spend",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.r,
                              color: UtilColor.dotGrey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  width: 327.w,
                  height: 68.h,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/black_icon.svg"),
                      SizedBox(width: 12.w),
                      SizedBox(
                        width: 168.w,
                        height: 36.h,
                        child: Text(
                          "Got any questions for Finpay? Our CS are ready 24/7 to help!",
                          style: TextStyle(
                              fontSize: 12.r,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 51.w),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 46.h),
                Text(
                  "You joined Finpay on September 2021. It's been 1 month since than "
                  "and our mission is still the same, help you better manage your finance.",
                  style: TextStyle(
                    fontSize: 14.r,
                    fontWeight: FontWeight.w400,
                    color: UtilColor.dotGrey
                  ),
                  textAlign:TextAlign.center ,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
