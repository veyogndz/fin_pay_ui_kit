import 'package:d_chart/d_chart.dart';
import 'package:fin_pay_ui_kit/screens/my_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../atomic_design/molecule/fake_list_tile.dart';
import '../atomic_design/molecule/statistic_button.dart';
import '../atomic_design/molecule/text_button.dart';
import '../util/util_colors.dart';

class StatisticsV2 extends StatefulWidget {
  const StatisticsV2({Key? key}) : super(key: key);

  @override
  State<StatisticsV2> createState() => _StatisticsV2State();
}

class _StatisticsV2State extends State<StatisticsV2> {
  int currentTab = 1;
  int currentButton = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: UtilColor.difBlue,
        child: SvgPicture.asset("assets/float_icon.svg"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyCard()),
          );
        },
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
        child: Padding(
          padding: EdgeInsets.only(left: 32.w, right: 32.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              Text(
                "Spending",
                style: TextStyle(color: UtilColor.dotGrey, fontSize: 16.r),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    "\$1,691.54",
                    style:
                        TextStyle(fontSize: 32.r, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    "-3.1% from last month",
                    style: TextStyle(color: UtilColor.dotGrey, fontSize: 12.r),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 24.h),
                  Row(
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
                  SizedBox(height: 32.h),
                  Stack(
                    children: [
                      SizedBox(
                        width: 311.w,
                        height: 224.h,
                        child: DChartBar(
                          data: const [
                            {
                              'id': 'Bar',
                              'data': [
                                {'domain': 'Jun', 'measure': 1.3},
                                {'domain': 'Jul', 'measure': 2.3},
                                {'domain': 'Aug', 'measure': 1.7},
                                {'domain': 'Sep', 'measure': 1.5},
                                {'domain': 'Oct', 'measure': 2.6},
                                {'domain': 'Nov', 'measure': 1.1},
                              ],
                            },
                          ],
                          domainLabelPaddingToAxisLine: 16,
                          axisLinePointWidth: 10,
                          axisLineColor: Colors.white,
                          measureLabelPaddingToAxisLine: 16,
                          barColor: (barData, index, id) {
                            switch (barData['domain']) {
                              case 'Jun':
                                return UtilColor.chartsColor;
                              case 'Jul':
                                return UtilColor.chartsColor;
                              case 'Aug':
                                return UtilColor.chartsColor;
                              case 'Sep':
                                return UtilColor.chartsColor;
                              case 'Oct':
                                return UtilColor.chartsBlueColor;
                              case 'Nov':
                                return UtilColor.chartsColor;
                              default:
                                return Colors.red;
                            }
                          },
                          showBarValue: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0.w),
                        child: const Divider(
                          thickness: 0.5,
                          indent: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 70.0.w),
                        child: const Divider(
                          thickness: 0.5,
                          indent: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 130.0.w),
                        child: const Divider(
                          thickness: 0.5,
                          indent: 20,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 32.h),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "This Week",
                          style: TextStyle(
                              fontSize: 18.r, fontWeight: FontWeight.w800),
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
                  SizedBox(
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
