import 'package:fin_pay_ui_kit/atomic_design/atom/grey_small_text.dart';
import 'package:fin_pay_ui_kit/screens/transfer.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slidable_button/slidable_button.dart';

class TopUp extends StatefulWidget {
  const TopUp({Key? key}) : super(key: key);

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  int variableMoney = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UtilColor.difBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
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
                    "TopUp",
                    style: TextStyle(
                        fontSize: 20.r,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.r)
              ),
              color:Colors.white
              //color: Colors.red
            ),
            child: Column(
              children: [
                SizedBox(height: 50.h),
                Container(
                  decoration: BoxDecoration(
                      color: UtilColor.iconWhite,
                      borderRadius: BorderRadius.circular(20.r)),
                  width: 80.w,
                  height: 80.h,
                  child: SvgPicture.asset(
                    "assets/union_icon.svg",
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  "FinPay Card",
                  style: TextStyle(fontSize: 24.r, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 16.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 16.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset("assets/dot_number.svg"),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "5718",
                      style: TextStyle(color: UtilColor.dotGrey, fontSize: 16.r),
                    )
                  ],
                ),
                SizedBox(
                  height: 32.h,
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
                            padding: EdgeInsets.only(left: 20.w),
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
                                        variableMoney -= 100;
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
                                      fontSize: 20.r, fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  variableMoney.toString(),
                                  style: TextStyle(
                                      fontSize: 46.r, fontWeight: FontWeight.w800),
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
                                        variableMoney += 100;
                                      }
                                    });
                                  },
                                  icon: SvgPicture.asset("assets/increase.svg")),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(color: UtilColor.lightGrey)),
                  width: 327.w,
                  height: 64.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 15.w),
                        child: SvgPicture.asset("assets/mastercard.svg"),
                      ),
                      SizedBox(width: 16.w),
                      const GreySmallText(variable: "Debit"),
                      SizedBox(width: 118.w),
                      Text(
                        "\$7,124",
                        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.r),
                      ),
                      SizedBox(width: 8.w),
                      SvgPicture.asset("assets/arrow-down.svg")
                    ],
                  ),
                ),
                SizedBox(
                  height: 63.h,
                ),
                // SwipingButton(
                //     text: "Swipe to top-up",
                //     onSwipeCallback: () {
                //       //print("Called back");
                //     }),
                SlidableButton(
                  isRestart: true,
                  borderRadius:  BorderRadius.vertical(
                    top: Radius.circular(10.r),
                    bottom: Radius.circular(10.r)
                  ),
                  width: 327.w,
                  height: 56.h,
                  buttonWidth:48.w,
                  color: UtilColor.lightGrey,
                  buttonColor: UtilColor.difBlue,
                  dismissible: true,
                  label:SvgPicture.asset("assets/arrow_go.svg"),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text("Swipe to top-up",style: TextStyle(
                        fontSize: 16.r,
                        fontWeight: FontWeight.w700
                      ),),
                    ],
                  ),
                  onChanged: (position) {
                    setState(() {
                      if (position == SlidableButtonPosition.right) {
                         print('Button is on the right');
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const Transfer()),
                         );
                      } else {
                         print('Button is on the left');
                      }
                    });
                  },
                ),
                SizedBox(
                  height: 70.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
