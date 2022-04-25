import 'package:fin_pay_ui_kit/atomic_design/atom/big_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/atom/grey_small_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/border_container.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/fake_list_tile.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/moneys_button.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/text_button.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'TopUp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0; // to keep track of active tab index
  final PageStorageBucket bucket = PageStorageBucket();
  List<bool> disSelected = [true, false];
  final controller = PageController(viewportFraction: 1.0, keepPage: true);
  ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset("assets/float_icon.svg"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TopUp()),
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
                            color: currentTab == 1
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
                            color: currentTab == 1
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
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const GreySmallText(variable: "Good Morning,"),
                    SizedBox(
                      height: 4.h,
                    ),
                    const BigText(variable: "James Lee")
                  ],
                ),
                SizedBox(
                  width: 19.w,
                ),
                Container(
                  width: 70.w,
                  height: 29.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: UtilColor.lightOrange,
                      ),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Container(
                    width: 69.w,
                    height: 28.h,
                    color: UtilColor.lightOrange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/ranking_icon.svg",
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        const Text(
                          "Gold",
                          style: TextStyle(color: UtilColor.normalOrange),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  height: 50.h,
                  child: DottedBorder(
                    dashPattern: [16.r, 6.r],
                    strokeWidth: 3,
                    color: UtilColor.normalOrange,
                    borderType: BorderType.Circle,
                    radius: Radius.circular(100.r),
                    padding: EdgeInsets.all(6.r),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(150.r)),
                      child: SizedBox(
                        width: 45.w,
                        height: 45.h,
                        child: Image.asset(
                          "assets/selfies.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MoneysButton(
                          values: const ['USD', 'IDR'],
                          onToggleCallback: (value) {
                            setState(() {
                            });
                          },
                          buttonColor: UtilColor.difBlue,
                          backgroundColor: Colors.white,
                          textColor: const Color(0xFFFFFFFF),
                        ),
                        TextsButton(
                          variable: "+",
                          color: UtilColor.difBlue,
                          color2: UtilColor.difBlue,
                          variable2: "  Add Currency",
                          fontSize: 20.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                      height: 230.h,
                      child: Column(
                        children: [
                          Expanded(
                            child: PageView(
                              controller: controller,
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                SvgPicture.asset("assets/card_blue.svg"),
                                SvgPicture.asset("assets/card_white.svg"),
                                SvgPicture.asset("assets/card_blue.svg"),
                              ],
                            ),
                          ),
                          SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            effect: ScrollingDotsEffect(
                                dotHeight: 8.h,
                                dotWidth: 8.w,
                                radius: 20.r,
                                dotColor: UtilColor.dotColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: [
                        BorderContainer(
                            svgPicture: SvgPicture.asset("assets/Topup.svg")),
                        BorderContainer(
                            svgPicture:
                                SvgPicture.asset("assets/Withdraw.svg")),
                        BorderContainer(
                          svgPicture: SvgPicture.asset("assets/Transfer.svg"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 33.w,
                        ),
                        Text(
                          "Top-up",
                          style: TextStyle(fontSize: 16.r),
                        ),
                        SizedBox(
                          width: 48.w,
                        ),
                        Text(
                          "Withdraw",
                          style: TextStyle(fontSize: 16.r),
                        ),
                        SizedBox(
                          width: 43.w,
                        ),
                        Text(
                          "Transfer",
                          style: TextStyle(fontSize: 16.r),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: TextStyle(
                              fontSize: 18.r, fontWeight: FontWeight.w700),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
