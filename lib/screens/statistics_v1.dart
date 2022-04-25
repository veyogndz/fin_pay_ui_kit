import 'package:fin_pay_ui_kit/atomic_design/molecule/statistic_button.dart';
import 'package:fin_pay_ui_kit/screens/statistics_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../atomic_design/molecule/fake_list_tile.dart';
import '../atomic_design/molecule/text_button.dart';
import '../util/util_colors.dart';

class StatisticsV1 extends StatefulWidget {
  const StatisticsV1({Key? key}) : super(key: key);

  @override
  State<StatisticsV1> createState() => _StatisticsV1State();
}

class _StatisticsV1State extends State<StatisticsV1> {
  int currentTab = 1;
  int currentButton = 0;
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: UtilColor.difBlue,
        child: SvgPicture.asset("assets/float_icon.svg"),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
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
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
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
              ),
            ),
          ),
          title: Row(
            children: [
              SizedBox(width: 60.w),
              Text(
                "Statistic",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.r,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
          leadingWidth: 80.w,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 32.w, right: 32.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatisticsButton(
                    variable: 'Week',
                    onPressed: () {
                      currentButton = 1;
                      setState(() {});
                    },
                    textStyle: TextStyle(
                        fontSize: 16.r,
                        color: currentButton == 1
                            ? Colors.white
                            : UtilColor.dotGrey),
                    buttonStyle: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        primary: currentButton == 1
                            ? UtilColor.difBlue
                            : UtilColor.skipButton,
                        elevation: 0),
                  ),
                  StatisticsButton(
                    variable: 'Month',
                    onPressed: () {
                      currentButton = 2;
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StatisticsV2()),
                      );
                    },
                    textStyle: TextStyle(
                        fontSize: 16.r,
                        color: currentButton == 2
                            ? Colors.white
                            : UtilColor.dotGrey),
                    buttonStyle: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        primary: currentButton == 2
                            ? UtilColor.difBlue
                            : UtilColor.skipButton,
                        elevation: 0),
                  ),
                  StatisticsButton(
                    variable: 'Year',
                    onPressed: () {
                      currentButton = 3;
                      setState(() {});
                    },
                    textStyle: TextStyle(
                        fontSize: 16.r,
                        color: currentButton == 3
                            ? Colors.white
                            : UtilColor.dotGrey),
                    buttonStyle: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        primary: currentButton == 3
                            ? UtilColor.difBlue
                            : UtilColor.skipButton,
                        elevation: 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Stack(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6.r)),
                  width: 200.w,
                  height: 200.h,
                  child: DChartPie(
                    showLabelLine: true,
                    strokeWidth: 8.r,
                    labelFontSize: 0,
                    donutWidth: 13,
                    data: const [
                      {'domain': 'Food', 'measure': 45},
                      {'domain': 'Bills', 'measure': 27},
                      {'domain': 'Gadget', 'measure': 20},
                      {'domain': 'Other', 'measure': 15},
                    ],
                    fillColor: (pieData, index) {
                      switch (pieData['domain']) {
                        case 'Food':
                          return UtilColor.difBlue;
                        case 'Bills':
                          return UtilColor.billsColor;
                        case 'Gadget':
                          return UtilColor.gadgetColor;
                        case 'Other':
                          return Colors.black;
                        default:
                          return Colors.red;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 53.w, top: 80.h),
                  child: Column(
                    children: [
                      Text(
                        "\$691.54",
                        style: TextStyle(
                            fontSize: 24.r, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Spending",
                        style: TextStyle(
                            fontSize: 14.r, color: UtilColor.dotGrey),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 32.h),
            Scrollbar(
              isAlwaysShown: true,
              showTrackOnHover: true,
              hoverThickness: 40,
              child: SizedBox(
                width: 416.w,
                height: 90.h,
                child: ListView(
                  padding:  EdgeInsets.only(bottom: 50.r,left: 10.w),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: UtilColor.skipButton,
                          borderRadius: BorderRadius.circular(16.r)),
                      width: 87.w,
                      height: 34.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/dot_number.svg",
                            color: UtilColor.difBlue,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Food",
                            style: TextStyle(
                                fontSize: 16.r, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 16.h),
                    Container(
                      decoration: BoxDecoration(
                          color: UtilColor.skipButton,
                          borderRadius: BorderRadius.circular(16.r)),
                      width: 87.w,
                      height: 34.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/dot_number.svg",
                            color: UtilColor.billsColor,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Bills",
                            style: TextStyle(
                                fontSize: 16.r, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 16.h),
                    Container(
                      decoration: BoxDecoration(
                          color: UtilColor.skipButton,
                          borderRadius: BorderRadius.circular(16.r)),
                      width: 87.w,
                      height: 34.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/dot_number.svg",
                            color: UtilColor.gadgetColor,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Gadget",
                            style: TextStyle(
                                fontSize: 16.r, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 16.h),
                    Container(
                      decoration: BoxDecoration(
                          color: UtilColor.skipButton,
                          borderRadius: BorderRadius.circular(16.r)),
                      width: 87.w,
                      height: 34.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/dot_number.svg",
                            color: Colors.black,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Other",
                            style: TextStyle(
                                fontSize: 16.r, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 23.h),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "This Week",
                    style:
                        TextStyle(fontSize: 18.r, fontWeight: FontWeight.w800),
                  ),
                  TextsButton(
                    variable: "See all",
                    color: UtilColor.difBlue,
                    color2: Colors.white,
                    variable2: "",
                    fontSize: 14.w,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: SizedBox(
                width: 343.w,
                height: 330.h,
                child: Column(
                  children: const [
                    FakeListTile(),
                    FakeListTile(),
                    FakeListTile(),
                    FakeListTile(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
