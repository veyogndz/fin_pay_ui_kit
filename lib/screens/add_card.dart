import 'package:fin_pay_ui_kit/screens/my_card_pin.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                "My Cards",
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 32.w, right: 32.w),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 24.h),
                Container(
                  decoration: BoxDecoration(
                      color: UtilColor.skipButton,
                      borderRadius: BorderRadius.circular(16.r)),
                  padding: EdgeInsets.only(left: 24.w,top: 15.h),
                  width: 311.w,
                  height: 56.h,
                  child: Text(
                    "Daniel Travis",
                    style:
                        TextStyle(fontSize: 16.r, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  decoration: BoxDecoration(
                      color: UtilColor.skipButton,
                      borderRadius: BorderRadius.circular(16.r)),
                  padding: EdgeInsets.only(left: 24.w, right: 16.w),
                  width: 311.w,
                  height: 56.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2621 5472 5471 3124",
                        style: TextStyle(
                            fontSize: 16.r, fontWeight: FontWeight.w600),
                      ),
                      SvgPicture.asset("assets/mastercard.svg"),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  decoration: BoxDecoration(
                      color: UtilColor.skipButton,
                      borderRadius: BorderRadius.circular(16.r)),
                  padding: EdgeInsets.only(left: 24.w, right: 16.w),
                  width: 311.w,
                  height: 56.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "10 / 25",
                        style: TextStyle(
                            fontSize: 16.r, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "3-digit CVV",
                        style:
                            TextStyle(fontSize: 16.r, color: UtilColor.dotGrey),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  width: 311.w,
                  height: 64.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyCardPin()),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 16.w),
                        SvgPicture.asset("assets/float_icon.svg"),
                        SizedBox(width: 12.w),
                        Text(
                          "Scan your card",
                          style: TextStyle(
                            fontSize: 16.r,
                          ),
                        ),
                        SizedBox(width: 96.w),
                        const Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: UtilColor.difBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18.h),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonBar(
                children: [
                  SizedBox(width: 26.w),
                  _calcButton('1'),
                  SizedBox(width: 60.w),
                  _calcButton('2'),
                  SizedBox(width: 60.w),
                  _calcButton('3'),
                ],
              )
            ],
          ),
          SizedBox(height: 38.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonBar(
                children: [
                  SizedBox(width: 26.w),
                  _calcButton('4'),
                  SizedBox(width: 60.w),
                  _calcButton('5'),
                  SizedBox(width: 60.w),
                  _calcButton('6'),
                ],
              )
            ],
          ),
          SizedBox(height: 38.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonBar(
                children: [
                  SizedBox(width: 26.w),
                  _calcButton('7'),
                  SizedBox(width: 60.w),
                  _calcButton('8'),
                  SizedBox(width: 60.w),
                  _calcButton('9'),
                ],
              )
            ],
          ),
          SizedBox(height: 38.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonBar(
                children: [
                  SizedBox(width: 46.w),
                  SvgPicture.asset("assets/dot_number.svg",
                      color: Colors.black),
                  SizedBox(width: 83.w),
                  _calcButton('0'),
                  SizedBox(width: 69.w),
                  const Icon(Icons.backspace_outlined)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _calcButton(String value) {
    return InkWell(
        borderRadius: BorderRadius.circular(45),
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          width: 50.w,
          height: 50.h,
          child: Text(
            value,
            style: TextStyle(
                fontSize: 26.r,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ));
  }
}
