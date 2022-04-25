import 'package:fin_pay_ui_kit/atomic_design/molecule/login_button.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/text_button.dart';
import 'package:fin_pay_ui_kit/screens/statistics_v1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../atomic_design/atom/grey_small_text.dart';
import '../util/util_colors.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  int variableMoney = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 375.w,
            height: 142.h,
            color: UtilColor.difBlue,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.r),
                  child: IconButton(
                    padding: EdgeInsets.only(top: 45.r),
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      size: 24.r,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 45.r),
                  child: Text(
                    "Transfer",
                    style: TextStyle(
                        fontSize: 20.r,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 32.h),
                Text(
                  "Where do you want to transfer?",
                  style: TextStyle(fontSize: 20.r, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 32.h),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(color: UtilColor.lightGrey)),
                  width: 327.w,
                  height: 56.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset(
                        "assets/card_icon.svg",
                        color: UtilColor.difBlue,
                      ),
                      SizedBox(width: 16.w),
                      const GreySmallText(variable: "Select Bank"),
                      SizedBox(width: 140.w),
                      SvgPicture.asset("assets/arrow-down.svg")
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transfer to",
                      style: TextStyle(
                          fontSize: 16.r, fontWeight: FontWeight.w700),
                    ),
                    TextsButton(
                        variable: "See all",
                        color: UtilColor.difBlue,
                        color2: Colors.white,
                        variable2: "",
                        fontSize: 16.r),
                  ],
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  width: 321.w,
                  height: 74.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        children: [
                          SizedBox(
                              width: 39.w,
                              height: 48.h,
                              child: Image.asset("assets/add.png")),
                          SizedBox(height: 10.h),
                          const Text("Add")
                        ],
                      ),
                      SizedBox(width: 18.w),
                      Column(
                        children: [
                          SizedBox(
                              width: 48.w,
                              height: 48.h,
                              child: Image.asset("assets/human1.png")),
                          SizedBox(height: 10.h),
                          const Text("Philip")
                        ],
                      ),
                      SizedBox(width: 23.w),
                      Column(
                        children: [
                          SizedBox(
                              width: 48.w,
                              height: 48.h,
                              child: Image.asset("assets/human2.png")),
                          SizedBox(height: 10.h),
                          const Text("Brandon")
                        ],
                      ),
                      SizedBox(width: 23.w),
                      Column(
                        children: [
                          SizedBox(
                              width: 48.w,
                              height: 48.h,
                              child: Image.asset("assets/human3.png")),
                          SizedBox(height: 10.h),
                          const Text("Julia")
                        ],
                      ),
                      SizedBox(width: 23.w),
                      Column(
                        children: [
                          SizedBox(
                              width: 48.w,
                              height: 48.h,
                              child: Image.asset("assets/human4.png")),
                          SizedBox(height: 10.h),
                          const Text("Dianne")
                        ],
                      ),
                      SizedBox(width: 23.w),
                      Column(
                        children: [
                          SizedBox(
                              width: 48.w,
                              height: 48.h,
                              child: Image.asset("assets/human1.png")),
                          SizedBox(height: 10.h),
                          const Text("Philip")
                        ],
                      ),
                      SizedBox(width: 23.w),
                      Column(
                        children: [
                          SizedBox(
                              width: 48.w,
                              height: 48.h,
                              child: Image.asset("assets/human2.png")),
                          SizedBox(height: 10.h),
                          const Text("Brandon")
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 327.w,
                  height: 136.h,
                  decoration: BoxDecoration(
                      color: UtilColor.iconWhite,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Amount (USD)",
                        style: TextStyle(
                            color: UtilColor.bottomGrey,
                            fontSize: 16.r,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 20.w),
                            child: Container(
                              width: 32.w,
                              height: 32.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (variableMoney == 0) {
                                        variableMoney = 0;
                                      } else {
                                        variableMoney -= 25;
                                      }
                                    });
                                  },
                                  icon: SvgPicture.asset("assets/decrease.svg")),
                            ),
                          ),
                          SizedBox(
                            width: 100.w,
                            height: 43.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "\$",
                                  style: TextStyle(
                                      fontSize: 20.r,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  variableMoney.toString(),
                                  style: TextStyle(
                                      fontSize: 46.r,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.w),
                            child: Container(
                              width: 32.w,
                              height: 32.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (variableMoney == 900) {
                                        variableMoney = 900;
                                      } else {
                                        variableMoney += 25;
                                      }
                                    });
                                  },
                                  icon: SvgPicture.asset("assets/increase.svg")),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 75.h,
                ),
                SizedBox(
                  width: 327.w,
                  //height: 56.h,
                  child: LoginButton(
                      variable: "Continue",
                      buttonColor: UtilColor.difBlue,
                      fontColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StatisticsV1()),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
